param(
  [Parameter(Mandatory=$true)]
  [ValidatePattern('^[A-Za-z0-9][A-Za-z0-9_-]{1,49}$')]
  [string]$Name,
  [string]$Destination = (Join-Path $PSScriptRoot '..\WORKSPACES'),
  [string]$InputsPath = (Join-Path $PSScriptRoot '..\00_NEW_APP_INPUTS')
)

$kitRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$template = Join-Path $kitRoot '03_PROJECT_TEMPLATE'

if (-not (Test-Path -LiteralPath $template -PathType Container)) {
  throw "Project template not found: $template"
}
if (-not (Test-Path -LiteralPath $InputsPath -PathType Container)) {
  throw "App input folder not found: $InputsPath`nExtract ForgeFlow_New_App_Inputs.zip into the universal kit root, or pass -InputsPath with the full path to its 00_NEW_APP_INPUTS folder."
}

New-Item -ItemType Directory -Force -Path $Destination | Out-Null
$destinationPath = (Resolve-Path -LiteralPath $Destination).Path
$target = Join-Path $destinationPath $Name

if (Test-Path -LiteralPath $target) {
  throw "Target already exists; refusing to overwrite: $target"
}

New-Item -ItemType Directory -Force -Path $target | Out-Null
Copy-Item -Path (Join-Path $template '*') -Destination $target -Recurse -Force

$sourceInputs = (Resolve-Path -LiteralPath $InputsPath).Path
$targetInputs = Join-Path $target '00_SOURCE_INPUTS'
New-Item -ItemType Directory -Force -Path $targetInputs | Out-Null
Get-ChildItem -LiteralPath $sourceInputs -Force | ForEach-Object {
  Copy-Item -LiteralPath $_.FullName -Destination $targetInputs -Recurse -Force
}

Write-Host "Created new project workspace: $target"
Write-Host "Copied app-specific inputs from: $sourceInputs"
Write-Host "Next: open this folder in ZCode and run prompts\00_DISCOVER_AND_PLAN.md"
