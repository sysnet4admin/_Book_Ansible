<#
.NOTES
  Version:        1.0
  Author:         HoonJo
  Creation Date:  2018.05.05
  Purpose/Change: install_chocolatey  
#>

# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; `
iex ((New-Object System.Net.WebClient).`
DownloadString('https://chocolatey.org/install.ps1'))