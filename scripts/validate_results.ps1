param(
    [string]$ProcessedDir = "data/processed",
    [string]$ResultsDir = "results"
)

$ErrorActionPreference = "Stop"

$inv = Import-Csv (Join-Path $ProcessedDir "agent-tool-invocations.csv")
$runs = Import-Csv (Join-Path $ProcessedDir "runs.csv")
$toolFreq = Import-Csv (Join-Path $ResultsDir "tool-frequency.csv")
$catFreq = Import-Csv (Join-Path $ResultsDir "category-frequency.csv")
$trans = Import-Csv (Join-Path $ResultsDir "transition-frequency.csv")
$catTrans = Import-Csv (Join-Path $ResultsDir "category-transition-frequency.csv")

function Assert-Equal($Actual, $Expected, [string]$Message) {
    if ($Actual -ne $Expected) {
        throw "$Message. Esperado=$Expected, obtenido=$Actual"
    }
    Write-Host "[OK] $Message = $Expected"
}

Assert-Equal @($runs).Count 20 "Runs totales"
Assert-Equal @($runs | Where-Object conclusion -eq "success").Count 5 "Runs exitosos"
Assert-Equal @($runs | Where-Object conclusion -eq "failure").Count 15 "Runs fallidos"
Assert-Equal @($inv).Count 40 "Invocaciones"
Assert-Equal @($inv.Tool_Name | Select-Object -Unique).Count 7 "Herramientas distintas"

$retrieval = @($inv | Where-Object Category -eq "retrieval").Count
$processing = @($inv | Where-Object Category -eq "processing").Count
$modification = @($inv | Where-Object Category -eq "modification").Count

Assert-Equal $retrieval 26 "Invocaciones Retrieval"
Assert-Equal $processing 10 "Invocaciones Processing/Execution"
Assert-Equal $modification 4 "Invocaciones Modification"

$totalTransitions = ($trans | Measure-Object -Property count -Sum).Sum
Assert-Equal ([int]$totalTransitions) 35 "Transiciones totales"

function Get-TransitionCount($Rows, [string]$Transition) {
    $row = $Rows | Where-Object transition -eq $Transition | Select-Object -First 1
    if (-not $row) { return 0 }
    return [int]$row.count
}

Assert-Equal (Get-TransitionCount $trans "shell -> shell") 6 "shell -> shell"
Assert-Equal (Get-TransitionCount $trans "list_label -> search_issues") 5 "list_label -> search_issues"
Assert-Equal (Get-TransitionCount $trans "search_issues -> search_issues") 4 "search_issues -> search_issues"

Assert-Equal (Get-TransitionCount $catTrans "Retrieval -> Retrieval") 19 "Retrieval -> Retrieval"
Assert-Equal (Get-TransitionCount $catTrans "Processing/Execution -> Processing/Execution") 6 "Processing -> Processing"
Assert-Equal (Get-TransitionCount $catTrans "Retrieval -> Processing/Execution") 4 "Retrieval -> Processing"

$fail401 = @($runs | Where-Object failure_reason -like "HTTP 401*").Count
$fail429 = @($runs | Where-Object failure_reason -like "HTTP 429*").Count
$setup = @($runs | Where-Object failure_stage -eq "setup/install").Count

Assert-Equal $fail401 10 "Fallos HTTP 401"
Assert-Equal $fail429 4 "Fallos HTTP 429"
Assert-Equal $setup 1 "Fallos setup/install"

Write-Host ""
Write-Host "Validación completada: los resultados coinciden con la evidencia preliminar reportada."
