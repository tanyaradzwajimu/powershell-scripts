# ============================================================
# Script:  Get-SystemInfoReport.ps1
# Author:  Tanya Jimu
# Date:    April 2026
# Purpose: Generates a clean system information report for
#          IT support diagnostics and asset documentation
# Usage:   Run in PowerShell 5.1 or later (as standard user)
# ============================================================

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "       SYSTEM INFORMATION REPORT            " -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# --- Gather system info ---
$info = Get-ComputerInfo

# --- OS Details ---
Write-Host "[ OS INFORMATION ]" -ForegroundColor Yellow
Write-Host "  Computer Name  : $($info.CsCaption)"
Write-Host "  OS Name        : $($info.OsName)"
Write-Host "  OS Version     : $($info.OsVersion)"
Write-Host "  Edition        : $($info.WindowsEditionId)"
Write-Host "  Architecture   : $($info.OsArchitecture)"
Write-Host "  Install Date   : $($info.WindowsInstallDateFromRegistry)"
Write-Host "  Registered To  : $($info.WindowsRegisteredOwner)"
Write-Host ""

# --- Hardware Details ---
Write-Host "[ HARDWARE ]" -ForegroundColor Yellow
Write-Host "  Manufacturer   : $($info.BiosManufacturer)"
Write-Host "  BIOS Version   : $($info.BiosVersion)"
Write-Host "  BIOS Type      : $($info.BiosFirmwareType)"
Write-Host "  Serial Number  : $($info.BiosSerialNumber)"
Write-Host "  Chassis Type   : $($info.CsChassisSKUNumber)"
Write-Host "  Total RAM      : $([math]::Round($info.OsTotalVisibleMemorySize / 1MB, 2)) GB"
Write-Host ""

# --- Network Details ---
Write-Host "[ NETWORK ]" -ForegroundColor Yellow
Write-Host "  Hostname       : $($info.CsDNSHostName)"
Write-Host "  Domain         : $($info.CsDomain)"
Write-Host "  Domain Role    : $($info.CsDomainRole)"
Write-Host "  Timezone (min) : $($info.CsCurrentTimeZone)"
Write-Host ""

# --- Disk Space ---
Write-Host "[ DISK SPACE ]" -ForegroundColor Yellow
Get-PSDrive -PSProvider FileSystem | ForEach-Object {
    $total = [math]::Round(($_.Used + $_.Free) / 1GB, 2)
    $used  = [math]::Round($_.Used / 1GB, 2)
    $free  = [math]::Round($_.Free / 1GB, 2)
    if ($total -gt 0) {
        Write-Host "  Drive $($_.Name): | Total: ${total}GB | Used: ${used}GB | Free: ${free}GB"
    }
}
Write-Host ""

# --- Running Services Count ---
Write-Host "[ SERVICES ]" -ForegroundColor Yellow
$running = (Get-Service | Where-Object { $_.Status -eq "Running" }).Count
$stopped = (Get-Service | Where-Object { $_.Status -eq "Stopped" }).Count
Write-Host "  Running        : $running"
Write-Host "  Stopped        : $stopped"
Write-Host ""

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  Report complete — $(Get-Date -Format 'dd MMM yyyy HH:mm:ss')" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""
