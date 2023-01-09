Write-Host "################################################################################`nThis script will scan all protected system files, and replace corrupted files with a cached copy that is located in a compressed folder at %WinDir%\System32\dllcache.`nThis might be useful if your computer hass performance issues or frequently shuts down by unknown reasons.`n"

sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
sfc /scannow
shutdown -r -t 0
