# check 4 choco install
try {
    Get-Command choco
    write-host "Chocolatey is installed."
}
catch {
    write-host "Chocolatey is not installed. Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    write-host "Chocolatey installation complete."
}

# check pwsh (v7+) is installed and update if necessary
$psversion = $PSVersionTable.PSVersion
if ($psversion.Major -lt 7) {
    write-host "PowerShell Core version is less than 7. Installing latest PowerShell Core..."
    try {
        choco install powershell-core -y
    }
    catch {
        write-host "Failed to install PowerShell Core. Please check your Chocolatey installation and try again."
    }
    
} else {
    write-host "PowerShell Core version is $($psversion.Major)+. No update needed."
}

# install stuff

choco install firefox -y
choco install python3 -y
choco install 7zip.install -y
choco install notepadplusplus.install -y
choco install git.install -y
choco install googledrive -y
choco install vlc -y
choco install treesizefree  -y
choco install vscode -y
choco install putty.install -y
choco install spotify -y
choco install advanced-ip-scanner -y
choco install cutepdf -y
choco install steam -y
choco install autohotkey -y
choco install github-desktop -y