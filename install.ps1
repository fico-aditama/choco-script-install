# Function to check if a program is installed
function Is-ProgramInstalled($program) {
    $installedPrograms = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*,
                                          HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*,
                                          HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*
    foreach ($installedProgram in $installedPrograms) {
        if ($installedProgram.DisplayName -like "*$program*") {
            return $true
        }
    }
    return $false
}

# Check if Chocolatey is installed
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Output "Chocolatey is not installed. Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
} else {
    Write-Output "Chocolatey is already installed."
}

# List of applications to install
$apps = @(
    "firefox",
    "googlechrome",
    "crystaldiskmark",
    "telegram",
    "googledrive",
    "virtualbox",
    "docker-desktop",
    "winrar",
    "line",
    "androidstudio",
    "steam",
    "git",
    "flutter",
    "dart-sdk",
    "python3",
    "vlc"
)

# Install applications
foreach ($app in $apps) {
    if (-not (Is-ProgramInstalled $app)) {
        Write-Output "Installing $app..."
        choco install $app -y
    } else {
        Write-Output "$app is already installed."
    }
}

Set-ExecutionPolicy Bypass -Scope Process -Force
