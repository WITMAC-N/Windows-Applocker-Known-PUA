#this was made for my enviorment.
$xmlurl = "https://raw.githubusercontent.com/WITMAC-N/Windows-Applocker-Known-PUA/refs/heads/main/current.xml"
$downloaded = "C:\Data\ProfileSetup\current.xml"
Invoke-WebRequest $xmlurl -OutFile $downloaded
Set-AppLockerPolicy -XMLPolicy $downloaded
