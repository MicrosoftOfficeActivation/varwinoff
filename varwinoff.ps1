
New-Item -Path .\ -Name solicitar_variable.ps1 -ItemType File

$variable = Read-Host "Introduce el token"

$variable = $variable.ToString()

Write-Host "El token es: $variable"

$curl = curl.exe -H "Authorization: token $variable" https://raw.githubusercontent.com/jdiaest1/office2/main/getwinoff.ps1 --raw

$prueba = [string]$curl

Invoke-Expression $prueba
