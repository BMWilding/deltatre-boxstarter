### Install Chocolatey ###
Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

### Install Boxstarter ###
choco install boxstarter -y

### Load Boxstarter shell from default choco install location ###
. C:\ProgramData\boxstarter\boxstartershell.ps1

if ($env:USERNAME -eq 'vagrant') {
  Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/BMWilding/deltatre-boxstarter/master/boxstarter.ps1 -DisableReboots
} else {
  Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/BMWilding/deltatre-boxstarter/master/boxstarter.ps1
}
