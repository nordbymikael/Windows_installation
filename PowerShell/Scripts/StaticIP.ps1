Write-Host "################################################################################`nThis script will configure a static IP address on a network interface.`nPlease enter the following information carefully.`nIf you want to skip a step, just press Enter.`nIf you enter any invalid information, the script will not apply the changes.`n)"

Write-Host "Available network interfaces:`n"
Get-NetAdapter | Select-Object Name, InterfaceAlias, InterfaceDescription | Format-Table -AutoSize

$InterfaceAlias = Read-Host "Enter Interface Alias for the network interface to be configured"
$IPAddress = Read-Host "Enter IPv4 Address"
$PrefixLength = Read-Host "Enter Prefix Length (CIDR notation for subnet mask; without /)"
$DefaultGateway = Read-Host "Enter Default Gateway"
$ServerAddresses = Read-Host "Enter DNS Server Addresses (comma separated)"

try {
    $PrefixLength = [int]$PrefixLength
    $PrefixLengthIsInt = $true
}
catch {
    Write-Warning "Prefix Length must be an integer. The IP configuration will be skipped, but the DNS servers will be changed if specified."
    $PrefixLengthIsInt = $false
}

if ($PrefixLengthIsInt -eq $true) {
    if ($IPAddress -ne "" -And $InterfaceAlias -ne "" -And $DefaultGateway -ne "" -And $PrefixLength -ne "") {
        New-NetIPAddress -IPAddress $IPAddress -InterfaceAlias $InterfaceAlias -DefaultGateway $DefaultGateway -AddressFamily IPv4 -PrefixLength $PrefixLength -ErrorAction SilentlyContinue
    }
    elseif ($IPAddress -ne "" -And $InterfaceAlias -ne "" -And $DefaultGateway -eq "" -And $PrefixLength -ne "") {
        New-NetIPAddress -IPAddress $IPAddress -InterfaceAlias $InterfaceAlias -AddressFamily IPv4 -PrefixLength $PrefixLength -ErrorAction SilentlyContinue
    }
}

if ($InterfaceAlias -ne "" -And $ServerAddresses -ne "") {
    Set-DnsClientServerAddress -InterfaceAlias $InterfaceAlias -ServerAddresses $ServerAddresses -ErrorAction SilentlyContinue
}
