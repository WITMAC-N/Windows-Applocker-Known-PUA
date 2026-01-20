# This was made for my environment.

$xmlurl = "https://raw.githubusercontent.com/WITMAC-N/Windows-Applocker-Known-PUA/refs/heads/main/current.xml"
$folder = "C:\Data\ProfileSetup"
$downloaded = "$folder\current.xml"

# Ensure folder exists
if (-not (Test-Path $folder)) {
    New-Item -Path $folder -ItemType Directory -Force | Out-Null
}

# Download XML
Invoke-WebRequest $xmlurl -OutFile $downloaded -ErrorAction Stop
# Import AppLocker policy
Set-AppLockerPolicy -XMLPolicy $downloaded -ErrorAction Stop