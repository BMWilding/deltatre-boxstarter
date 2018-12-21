Vagrant.configure("2") do |config|
  config.vm.box = "local/windows10"
  config.vm.provider "virtualbox" do |v|
    v.gui = false
  end

  config.vm.provision "shell", inline: <<-SCRIPT
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
cinst boxstarter -y
. C:\\ProgramData\\boxstarter\\boxstartershell.ps1
Install-BoxstarterPackage -PackageName C:\\Vagrant\\boxstarter.ps1 -DisableReboots
SCRIPT

end
