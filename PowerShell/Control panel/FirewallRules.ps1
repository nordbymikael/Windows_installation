# Allow ICMPv4 over all networks
New-NetFirewallRule -DisplayName "Allow ICMPv4" -Description "Allows ICMPv4 over all networks" -Enabled True -Direction Inbound -Action Allow -Protocol "ICMPv4" -InterfaceType Any
New-NetFirewallRule -DisplayName "Allow ICMPv4" -Description "Allows ICMPv4 over all networks" -Enabled True -Direction Outbound -Action Allow -Protocol "ICMPv4" -InterfaceType Any
