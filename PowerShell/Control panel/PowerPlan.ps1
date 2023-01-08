#powercfg -SETACTIVE a1841308-3541-4fab-bc81-f71556f20b4a #Power saver

#powercfg -SETACTIVE 381b4222-f694-41f0-9685-ff5bb260df2e #Balanced

#powercfg -SETACTIVE 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c #High performance

#powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 #Ultimate performance
#powercfg -SETACTIVE e9a42b02-d5df-448d-aa00-03f14749eb61

powercfg -IMPORT "E:\Scripts\Windows installation\PowerShell\Control panel\maximumperformance.pow" #Maximum performance
$MaximumPerformanceGUID = (powercfg -LIST | Select-String -Pattern "Maximum performance" | Select-Object -First 1).Line.Split("") | Select-Object -Index 3
powercfg -SETACTIVE $MaximumPerformanceGUID
