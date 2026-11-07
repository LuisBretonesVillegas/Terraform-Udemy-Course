# Runs tflint over the whole repo using the single root config (.tflint.hcl).
# Recursive mode resolves relative config paths per directory, so pass an absolute one.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
Set-Location $root

& tflint --init --config "$root\.tflint.hcl" | Out-Null
& tflint --recursive --config "$root\.tflint.hcl" --chdir $root
exit $LASTEXITCODE
