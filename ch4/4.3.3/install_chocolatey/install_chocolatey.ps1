<#
.NOTES
  Version:        1.0
  Author:         HoonJo
  Creation Date:  2018.05.05
  Purpose/Change: install_chocolatey  
#>

# Chocolatey 2.x needs .NET 4.8 (Server 2016 has 4.6.2, 2019 has 4.7.2). Install 1.x.
$env:chocolateyVersion = '1.4.0'
# Server 2016 does not enable TLS 1.2 by default
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor 3072

# install chocolatey
# Run install.ps1 in a new PowerShell process. Under Ansible's script module, Write-Host inside
# install.ps1 leaks into function output and the download fails.
$installer = "$env:TEMP\chocolatey-install.ps1"
(New-Object System.Net.WebClient).DownloadFile('https://community.chocolatey.org/install.ps1', $installer)
powershell.exe -NoProfile -ExecutionPolicy Bypass -File $installer
exit $LASTEXITCODE
