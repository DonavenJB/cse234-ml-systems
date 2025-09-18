param(
  [string]$src = ".\",
  [string]$out = ".\figures"
)
New-Item -ItemType Directory -Path $out -Force | Out-Null
Get-ChildItem -Recurse -Include *.png,*.pdf -Path $src | Copy-Item -Destination $out -Force
Write-Host "Exported figures to $out"
