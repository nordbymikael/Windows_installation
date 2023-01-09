Write-Host "################################################################################`nThis script will configure the power plan.`nAvailable power plans:`n1. Power saver`n2. Balanced`n3. High performance`n4. Ultimate performance`n5. Maximum performance (custom)`n"

$PowerPlan = Read-Host "Choose a power plan from the list by typing a number from 1 to 5 (press Enter to cancel)"

if ($PowerPlan -eq "") {
    Write-Host "The power plan has not been changed."
}
elseif ($PowerPlan -eq "1") {
    powercfg -SETACTIVE a1841308-3541-4fab-bc81-f71556f20b4a #Power saver

}
elseif ($PowerPlan -eq "2") {
    powercfg -SETACTIVE 381b4222-f694-41f0-9685-ff5bb260df2e #Balanced
}
elseif ($PowerPlan -eq "3") {
    powercfg -SETACTIVE 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c #High performance
}
elseif ($PowerPlan -eq "4") {
    powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 #Ultimate performance
    $UltimatePerformanceGUID = (powercfg -LIST | Select-String -Pattern "Ultimate performance" | Select-Object -First 1).Line.Split("") | Select-Object -Index 3
    powercfg -SETACTIVE $UltimatePerformanceGUID
}
elseif ($PowerPlan -eq "5") {
    powercfg -IMPORT "E:\Scripts\Windows installation\PowerShell\Scripts\Files\maximumperformance.pow" #Maximum performance
    $MaximumPerformanceGUID = (powercfg -LIST | Select-String -Pattern "Maximum performance" | Select-Object -First 1).Line.Split("") | Select-Object -Index 3
    powercfg -SETACTIVE $MaximumPerformanceGUID
}
else {
    Write-Warning "You did not make any of the choices above.`nThe power plan has not been changed."
}
