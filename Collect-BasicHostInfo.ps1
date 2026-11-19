# Collect-BasicHostInfo.ps1
# Read-only baseline collection for a Windows lab endpoint.
# Run from PowerShell. No admin rights are required for most fields.

$ErrorActionPreference = "Continue"

Write-Host "`n=== Host ==="
Get-CimInstance Win32_OperatingSystem |
    Select-Object CSName, Caption, Version, BuildNumber, LastBootUpTime

Write-Host "`n=== Network adapters / addresses ==="
Get-NetIPConfiguration |
    Select-Object InterfaceAlias,
        @{Name="IPv4";Expression={($_.IPv4Address | ForEach-Object IPAddress) -join ", "}},
        @{Name="Gateway";Expression={($_.IPv4DefaultGateway | ForEach-Object NextHop) -join ", "}}

Write-Host "`n=== Relevant services ==="
Get-Service -Name "Sysmon*", "Wazuh*" -ErrorAction SilentlyContinue |
    Select-Object Name, Status, StartType

Write-Host "`n=== Recent Sysmon events (if present) ==="
try {
    Get-WinEvent -FilterHashtable @{
        LogName = "Microsoft-Windows-Sysmon/Operational"
        StartTime = (Get-Date).AddHours(-24)
    } -MaxEvents 10 |
        Select-Object TimeCreated, Id, ProviderName, LevelDisplayName
} catch {
    Write-Warning "Could not read Sysmon log: $($_.Exception.Message)"
}

Write-Host "`nBaseline collection complete. Review output before sharing."
