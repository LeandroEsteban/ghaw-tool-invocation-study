param(
    [string]$InvocationsCsv = "data/processed/agent-tool-invocations.csv",
    [string]$ResultsDir = "results"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $InvocationsCsv)) {
    throw "No existe $InvocationsCsv"
}

New-Item -ItemType Directory -Force -Path $ResultsDir | Out-Null
$data = Import-Csv $InvocationsCsv

if (-not $data) {
    throw "El CSV no contiene invocaciones."
}

$totalCalls = @($data).Count

# Frecuencia por herramienta
$toolFrequency = $data |
    Group-Object Tool_Name |
    Sort-Object Count -Descending |
    ForEach-Object {
        $first = $_.Group | Select-Object -First 1
        [pscustomobject]@{
            tool        = $_.Name
            category    = switch ($first.Category) {
                "retrieval"    { "Retrieval" }
                "processing"   { "Processing/Execution" }
                "modification" { "Modification" }
                default        { $first.Category }
            }
            invocations = $_.Count
            percentage  = [math]::Round(100 * $_.Count / $totalCalls, 1)
        }
    }

$toolFrequency | Export-Csv (Join-Path $ResultsDir "tool-frequency.csv") -NoTypeInformation -Encoding UTF8

# Frecuencia por categoría
$categoryFrequency = $data |
    Group-Object Category |
    Sort-Object Count -Descending |
    ForEach-Object {
        $label = switch ($_.Name) {
            "retrieval"    { "Retrieval" }
            "processing"   { "Processing/Execution" }
            "modification" { "Modification" }
            default        { $_.Name }
        }

        [pscustomobject]@{
            category    = $label
            invocations = $_.Count
            percentage  = [math]::Round(100 * $_.Count / $totalCalls, 1)
        }
    }

$categoryFrequency | Export-Csv (Join-Path $ResultsDir "category-frequency.csv") -NoTypeInformation -Encoding UTF8

# Transiciones
$toolTransitions = @()
$categoryTransitions = @()

foreach ($run in ($data | Group-Object Run_ID)) {
    $rows = @($run.Group | Sort-Object {[int]$_.Invocation_Order})

    for ($i = 0; $i -lt ($rows.Count - 1); $i++) {
        $toolTransitions += [pscustomobject]@{
            from_tool = $rows[$i].Tool_Name
            to_tool   = $rows[$i + 1].Tool_Name
        }

        $fromCategory = switch ($rows[$i].Category) {
            "retrieval"    { "Retrieval" }
            "processing"   { "Processing/Execution" }
            "modification" { "Modification" }
            default        { $rows[$i].Category }
        }
        $toCategory = switch ($rows[$i + 1].Category) {
            "retrieval"    { "Retrieval" }
            "processing"   { "Processing/Execution" }
            "modification" { "Modification" }
            default        { $rows[$i + 1].Category }
        }

        $categoryTransitions += [pscustomobject]@{
            from_category = $fromCategory
            to_category   = $toCategory
        }
    }
}

$totalTransitions = @($toolTransitions).Count

$toolTransitionFrequency = $toolTransitions |
    Group-Object from_tool,to_tool |
    Sort-Object Count -Descending |
    ForEach-Object {
        $first = $_.Group | Select-Object -First 1
        [pscustomobject]@{
            from_tool  = $first.from_tool
            to_tool    = $first.to_tool
            transition = "$($first.from_tool) -> $($first.to_tool)"
            count      = $_.Count
            percentage = [math]::Round(100 * $_.Count / $totalTransitions, 1)
        }
    }

$toolTransitionFrequency | Export-Csv (Join-Path $ResultsDir "transition-frequency.csv") -NoTypeInformation -Encoding UTF8

$categoryTransitionFrequency = $categoryTransitions |
    Group-Object from_category,to_category |
    Sort-Object Count -Descending |
    ForEach-Object {
        $first = $_.Group | Select-Object -First 1
        [pscustomobject]@{
            from_category = $first.from_category
            to_category   = $first.to_category
            transition    = "$($first.from_category) -> $($first.to_category)"
            count         = $_.Count
            percentage    = [math]::Round(100 * $_.Count / $totalTransitions, 1)
        }
    }

$categoryTransitionFrequency | Export-Csv (Join-Path $ResultsDir "category-transition-frequency.csv") -NoTypeInformation -Encoding UTF8

Write-Host "Tool calls: $totalCalls"
Write-Host "Transiciones: $totalTransitions"
Write-Host "Resultados escritos en: $ResultsDir"
