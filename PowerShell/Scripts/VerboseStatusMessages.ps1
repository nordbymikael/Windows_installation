Write-Host "################################################################################`nThis script will enable verbose status messages.`n"

Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "VerboseStatus" -Type DWord -Value 1 -ErrorAction SilentlyContinue
