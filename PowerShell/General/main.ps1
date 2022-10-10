### Static IP Configuration ###
$AdapterName = "Ethernet"
$IPType = "IPv4"
$IP = "10.0.0.2"
$MaskBits = 24
$Gateway = "10.0.0.1"
$DNS = "127.0.0.1"
get-netadapter -Name $AdapterName | Set-NetIPInterface -InterfaceAlias $AdapterName -Dhcp Disabled -AddressFamily $IPType -IPAddress $IP -PrefixLength $MaskBits -DefaultGateway $Gateway -DNSServerSearchOrder $DNS
get-netadapter -name $AdapterName | Set-NetIPInterface -InterfaceAlias $AdapterName -Dhcp Disabled -AddressFamily $IPType -IPAddress $IP -PrefixLength $MaskBits -DefaultGateway $Gateway -DNSServerSearchOrder $DNS

get-netadapter -name $AdapterName | Set-NetIPAddress -InterfaceAlias $AdapterName -AddressFamily $IPType -IPAddress $IP -PrefixLength $MaskBits -Confirm $false
Set-DnsClientServerAddress -InterfaceAlias $AdapterName -ServerAddresses $DNS -Confirm $false

### Explorer Settings ###
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "LaunchTo" -Type DWord -Value 1
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "HideFileExt" -Type DWord -Value 0
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Hidden" -Type DWord -Value 1
#Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "ShowSuperHidden" -Type DWord -Value 1 #Value 2 to hide system files

### Power Plan Settings ###
#powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a #Power saver
#powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e #Balanced
#powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c #High performance
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 #Ultimate performance

Set-PowerPlan -Active -Name "Ultimate performance"

### Telemetry Settings ###


###  ###


###  ###


###  ###


###  ###


###  ###


###  ###