function InstallWinGet()
{
	$hasPackageManager = Get-AppPackage -name "Microsoft.DesktopAppInstaller"

	if(!$hasPackageManager)
	{
		Add-AppxPackage -Path "https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx"
		
		$releases_url = "https://api.github.com/repos/microsoft/winget-cli/releases/latest"

		[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
		$releases = Invoke-RestMethod -uri "$($releases_url)"
		$latestRelease = $releases.assets | Where { $_.browser_download_url.EndsWith("msixbundle") } | Select -First 1
	
		Add-AppxPackage -Path $latestRelease.browser_download_url
	}
}


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


