param(
    [string]$RawRoot = "data/raw",
    [string]$OutputDir = "data/processed"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $RawRoot)) {
    throw "No existe el directorio raw: $RawRoot"
}

New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null

function Get-Category([string]$ToolName) {
    switch ($ToolName) {
        "search_issues" { return "retrieval" }
        "list_label"    { return "retrieval" }
        "issue_read"    { return "retrieval" }
        "list_issues"   { return "retrieval" }
        "shell"         { return "processing" }
        "add_labels"    { return "modification" }
        "add_comment"   { return "modification" }
        default         { return "unclassified" }
    }
}

$invocations = @()

$logs = Get-ChildItem -Path $RawRoot -Recurse -File -Filter "agent-stdio.log"

foreach ($log in $logs) {
    $runId = $null

    # Busca un identificador numérico en los directorios ancestros.
    $cursor = $log.Directory
    while ($cursor -and -not $runId) {
        if ($cursor.Name -match '^(?:run-)?(\d{8,})$') {
            $runId = $Matches[1]
        }
        $cursor = $cursor.Parent
    }

    if (-not $runId) {
        Write-Warning "No se pudo inferir run_id para $($log.FullName). Se omite."
        continue
    }

    $order = 0
    foreach ($line in Get-Content -Path $log.FullName) {
        # Patrón documentado para herramientas MCP.
        if ($line -match '([A-Za-z0-9_-]+)\s+\(MCP:\s*([^)]+)\)') {
            $tool = $Matches[1]
            $provider = $Matches[2]
            $order++

            $invocations += [pscustomobject]@{
                Run_ID          = $runId
                Invocation_Order = $order
                Tool_Name       = $tool
                Provider        = $provider
                Tool_Type       = "MCP"
                Category        = Get-Category $tool
            }
            continue
        }

        # Patrón documentado para ejecución local.
        if ($line -match 'Running command\s+\(shell\)') {
            $order++

            $invocations += [pscustomobject]@{
                Run_ID          = $runId
                Invocation_Order = $order
                Tool_Name       = "shell"
                Provider        = "local"
                Tool_Type       = "execution"
                Category        = "processing"
            }
        }
    }
}

$invocations = $invocations | Sort-Object Run_ID, {[int]$_.Invocation_Order}

$invPath = Join-Path $OutputDir "agent-tool-invocations.csv"
$invocations | Export-Csv -Path $invPath -NoTypeInformation -Encoding UTF8

$summary = foreach ($group in ($invocations | Group-Object Run_ID)) {
    $rows = $group.Group | Sort-Object {[int]$_.Invocation_Order}
    $toolNames = @($rows.Tool_Name)

    [pscustomobject]@{
        Run_ID             = $group.Name
        Tool_Calls         = $rows.Count
        Unique_Tools       = @($toolNames | Select-Object -Unique).Count
        Retrieval_Calls    = @($rows | Where-Object Category -eq "retrieval").Count
        Processing_Calls   = @($rows | Where-Object Category -eq "processing").Count
        Modification_Calls = @($rows | Where-Object Category -eq "modification").Count
        Unique_Tool_Names  = (($toolNames | Select-Object -Unique) -join ", ")
        Tool_Sequence      = ($toolNames -join " -> ")
    }
}

$summaryPath = Join-Path $OutputDir "agent-tool-summary.csv"
$summary | Sort-Object Run_ID | Export-Csv -Path $summaryPath -NoTypeInformation -Encoding UTF8

Write-Host "Generado: $invPath"
Write-Host "Generado: $summaryPath"
Write-Host "Invocaciones extraídas: $($invocations.Count)"
