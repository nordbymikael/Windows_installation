Set-Service -Name DiagTrack -StartupType Disabled -Status Stopped
Set-Service -Name dmwappushservice -StartupType Disabled -Status Stopped
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0
Disable-ScheduledTask -Taskname StartupAppTask -TaskPath "\Microsoft\Windows\Application Experience"
Disable-ScheduledTask -Taskname "Microsoft Compatibility Appraiser" -TaskPath "\Microsoft\Windows\Application Experience"
#Disable-ScheduledTask -Taskname SdbinstMergeDbTask -TaskPath "\Microsoft\Windows\Application Experience"
Disable-ScheduledTask -Taskname PcaPatchDbTask -TaskPath "\Microsoft\Windows\Application Experience"
Disable-ScheduledTask -Taskname UsbCeip -TaskPath "\Microsoft\Windows\Customer Experience Improvement Program"
Disable-ScheduledTask -Taskname Consolidator -TaskPath "\Microsoft\Windows\Customer Experience Improvement Program"


