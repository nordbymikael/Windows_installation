Write-Host "################################################################################`nThis script will disable some parts of Windows Telemetry.`nBe aware that some of the changes might be reverted after a restart`nBe also aware that some settings might not be applied because of your Windows version (this will also not issue an error message).`n"

Set-Service -Name DiagTrack -StartupType Disabled -Status Stopped -ErrorAction SilentlyContinue
Set-Service -Name dmwappushservice -StartupType Disabled -Status Stopped -ErrorAction SilentlyContinue
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0 -ErrorAction SilentlyContinue
Disable-ScheduledTask -Taskname StartupAppTask -TaskPath "\Microsoft\Windows\Application Experience" -ErrorAction SilentlyContinue
Disable-ScheduledTask -Taskname "Microsoft Compatibility Appraiser" -TaskPath "\Microsoft\Windows\Application Experience" -ErrorAction SilentlyContinue
Disable-ScheduledTask -Taskname PcaPatchDbTask -TaskPath "\Microsoft\Windows\Application Experience" -ErrorAction SilentlyContinue
Disable-ScheduledTask -Taskname SdbinstMergeDbTask -TaskPath "\Microsoft\Windows\Application Experience" -ErrorAction SilentlyContinue
Disable-ScheduledTask -Taskname UsbCeip -TaskPath "\Microsoft\Windows\Customer Experience Improvement Program" -ErrorAction SilentlyContinue
Disable-ScheduledTask -Taskname Consolidator -TaskPath "\Microsoft\Windows\Customer Experience Improvement Program" -ErrorAction SilentlyContinue
