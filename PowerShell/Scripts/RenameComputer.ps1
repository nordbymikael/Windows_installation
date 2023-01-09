Write-Host "################################################################################`nThis script will rename the computer.`nYour computer will be forced to restart.`n"

$NewComputerName = Read-Host "Enter the new computer name (press Enter to cancel)"
$CurrentComputerName = Read-Host "Enter the computer name to be changed (press Enter to rename the current computer; this is required if you are renaming a domain computer)"

if ($NewComputerName -eq "") {
    Write-Host "The computer name has not been changed."
}
elseif ($NewComputerName -ne "" -And $CurrentComputerName -eq "") {
    Rename-Computer -NewName $NewComputerName -Restart -Force
}
elseif ($NewComputerName -ne "" -And $CurrentComputerName -ne "") {
    try {
        Rename-Computer -NewName $NewComputerName -ComputerName $CurrentComputerName -Restart -Force -ErrorAction Stop
    }
    catch {
        Write-Warning "The computer name to be changed does not exist.`nThe computer name has not been changed."
    }
}
