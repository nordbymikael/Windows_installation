Write-Host "################################################################################`nThis script will configure Windows Firewall.`n"

# Allow ICMPv4 over all networks
New-NetFirewallRule -DisplayName "Allow ICMPv4" -Description "Allows ICMPv4 over all networks for easier network configuration." -Enabled True -Direction Inbound -Action Allow -Protocol "ICMPv4" -InterfaceType Any -ErrorAction SilentlyContinue
New-NetFirewallRule -DisplayName "Allow ICMPv4" -Description "Allows ICMPv4 over all networks for easier network configuration." -Enabled True -Direction Outbound -Action Allow -Protocol "ICMPv4" -InterfaceType Any -ErrorAction SilentlyContinue
