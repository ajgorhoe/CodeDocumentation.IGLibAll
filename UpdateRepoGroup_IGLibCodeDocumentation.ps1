
# Clones or updates the IGLib code documentation repositories.

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "`nCloning/updating basic IGLib code documentation repositories:`n"
Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating CodeDocumentation.IGLib:"
& $(Join-Path $scriptDir "UpdateRepo_CodeDocumentation.IGLib.ps1")

Write-Host "`nUpdating :"
& $(Join-Path $scriptDir "UpdateRepo_CodeDocumentation.IGLibAll.ps1")

Write-Host "`nUpdating :"
& $(Join-Path $scriptDir "UpdateRepo_CodeDocumentation.IGLibWithSources.ps1")

Write-Host "`nUpdating :"
& $(Join-Path $scriptDir "UpdateRepo_CodeDocumentation.IGLibAllWithSources.ps1")


Write-Host "  ... updating IGLib codedoc repos completed.`n`n"

