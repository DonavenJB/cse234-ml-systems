# Create/upgrade a Windows venv for this repo (kept outside the repo tree)
param(
  [string]$py = "C:\Python313\python.exe",
  [string]$envHome = "C:\pyenvs\cse234"
)
if (-not (Test-Path $envHome)) {
  & $py -m venv $envHome --upgrade-deps
}
& "$envHome\Scripts\Activate.ps1"
python -V
python -m pip install -r .\env\requirements.txt
python -m ipykernel install --user --name cse234 --display-name "Python (cse234 venv)"
Write-Host "Activated and installed deps."
