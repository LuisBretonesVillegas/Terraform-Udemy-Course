# Runs `terraform validate` in every environment under environments/.
# Initializes without a backend when needed, so it never touches remote state.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$failed = $false

foreach ($dir in Get-ChildItem -Path (Join-Path $root 'environments') -Directory) {
    if (-not (Get-ChildItem -Path $dir.FullName -Filter *.tf -ErrorAction SilentlyContinue)) { continue }

    if (-not (Test-Path (Join-Path $dir.FullName '.terraform'))) {
        & terraform "-chdir=$($dir.FullName)" init -backend=false -input=false -no-color | Out-Null
        if ($LASTEXITCODE -ne 0) { $failed = $true; continue }
    }

    Write-Host "validate: $($dir.Name)"
    & terraform "-chdir=$($dir.FullName)" validate -no-color
    if ($LASTEXITCODE -ne 0) { $failed = $true }
}

if ($failed) { exit 1 }
