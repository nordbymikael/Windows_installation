cd "E:\Scripts\Windows installation\PowerShell" # Change the path to the folder where the scripts are located

# Scripts to run first (these scripts run without user input)
.\Control_panel\ExplorerSettings.ps1
.\Control_panel\MouseAcceleration.ps1
.\Control_panel\FirewallRules.ps1
.\Control_panel\VerboseStatusMessages.ps1

.\Telemetry\TelemetrySettings.ps1

# Scripts to run second (these scripts run with user input)
.\Control_panel\PowerPlan.ps1
.\Control_panel\StaticIP.ps1

# Plans for future scripts
.\Control_panel\WindowsUpdate.ps1
.\Control_panel\WindowsDefender.ps1
