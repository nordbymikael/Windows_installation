$NewComputerName = Read-Host "Enter the new computer name (type N to cancel)"
#$CurrentComputerName = Read-Host "Enter the computer name to be changed"

if ($NewComputerName -eq "N" -or $NewComputerName -eq "n") {
    Write-Host "The computer name has not been changed. Exiting..."
    exit
}
else {
    Rename-Computer -NewName $NewComputerName -Restart -Force #-ComputerName $CurrentComputerName
}
