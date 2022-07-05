Add-AppxProvisionedPackage -Online -PackagePath "C:\Microsoft.VCLibs.x64.14.00.Desktop.appx" -SkipLicense
Add-AppxProvisionedPackage -Online -PackagePath "C:\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle" -LicensePath "C:\9c0fe2ce7f8e410eb4a8f417de74517e_License1.xml"


#Get scoop package manager
iwr -useb get.scoop.sh | iex
#installs the programs I like 
winget install firefox
winget install Git.Git
#You may also use code insiders by adding " - Insiders" to the end of the following command
winget install Microsoft.VisualStudioCode
scoop install neovim gcc python

git clone https://github.com/tapatiohaxx/ps-user-scripts C:\user-scripts-git
git clone https://github.com/tapatiohaxx/posh-themes-fork C:\oh-my-posh-themes

mkdir $HOME\.config/powershell
mv C:\user-scripts-git\profile.ps1 $PROFILE
cp C:\oh-my-posh-themes\festivetech.omp.json $HOME\.config\powershell\festivetech.omp.json
mv C:\user\scripts-git\user_profile.ps1 $HOME\.config\powershell\user_profile.ps1


