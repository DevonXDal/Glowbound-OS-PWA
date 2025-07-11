# Run as Administrator!

$hostsPath = "$env:SystemRoot\System32\drivers\etc\hosts"
$ip = "127.0.0.1"
$domains = @(
    "glowbound.local",
    "status.glowbound.local",
    "docker.glowbound.local",
    "pgadmin.glowbound.local"
)

foreach ($domain in $domains) {
    $entry = "$ip`t$domain"
    $alreadyExists = Select-String -Path $hostsPath -Pattern $domain -Quiet
    if (-not $alreadyExists) {
        Add-Content -Path $hostsPath -Value $entry
        Write-Host "Added $domain to hosts file."
    } else {
        Write-Host "$domain already exists in hosts file."
    }
}

Write-Host "`nDone. You can now visit GlowboundOS at:"
Write-Host "  → https://glowbound.local"
Write-Host "  → https://status.glowbound.local"
Write-Host "  → https://docker.glowbound.local"
Write-Host "  → https://pgadmin.glowbound.local"
