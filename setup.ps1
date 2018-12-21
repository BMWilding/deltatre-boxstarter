### Install Chocolatey ###
Set-ExecutionPolicy Bypass -Scope Process -Force;
$chocoInstall = [IO.Path]::GetTempFileName();

## Make sure install.ps1 is kosher! ##
Invoke-WebRequest 'https://chocolatey.org/install.ps1' -OutFile $chocoInstall
Get-Content $chocoInstall | Invoke-Expression

### Install Boxstarter ###
choco install boxstarter -y

### Load Boxstarter shell from default choco install location ###
. C:\ProgramData\boxstarter\boxstartershell.ps1
Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/BMWilding/deltatre-boxstarter/master/boxstarter.ps1
