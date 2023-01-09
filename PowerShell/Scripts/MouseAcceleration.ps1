Write-Host "################################################################################`nThis script will turn off the mouse acceleration in the registry.`nBe aware that you have to change this manually too.`n"

Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Type String -Value "0" -ErrorAction SilentlyContinue
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold1" -Type String -Value "0" -ErrorAction SilentlyContinue
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseThreshold2" -Type String -Value "0" -ErrorAction SilentlyContinue
