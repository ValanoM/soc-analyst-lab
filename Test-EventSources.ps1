# Test-EventSources.ps1
# Read-only check for expected Windows event channels and recent activity.

$channels = @(
    "Security",
    "Microsoft-Windows-PowerShell/Operational",
    "Microsoft-Windows-Sysmon/Operational"
)

foreach ($channel in $channels) {
    Write-Host "`n=== $channel ==="
    try {
        $events = Get-WinEvent -LogName $channel -MaxEvents 5 -ErrorAction Stop
        $events | Select-Object TimeCreated, Id, ProviderName
    } catch {
        Write-Warning "Unavailable or access denied: $($_.Exception.Message)"
    }
}
