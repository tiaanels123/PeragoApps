Set-ExecutionPolicy Bypass -Scope Process -Force; #Sit ExecutionPolicy se Restricted mode na Bypass vir paar secondes
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')); #Installeer chocolatey wat n software automation package manager is vir Windows
choco install adobereader 7zip microsoft-teams notepadplusplus googlechrome -y; #Download en install "adobereader 7zip microsoft-teams notepadplusplus googlechrome" alles wat nuwe windows benodig.
choco upgrade all -y; #Upgrade al die installed apps
Remove-Item -path C:\ProgramData\chocolatey -recurse -force; #"Uninstall" Chocolatey (Remove is hoe mens hom unistall) 
Set-ExecutionPolicy Restricted -Scope Process -Force #Sit ExecutionPolicy se Bypass mode terug na Restricted