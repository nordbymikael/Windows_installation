#powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a #Power saver
#Set-PowerPlan -Active -Name "Power saver"

#powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e #Balanced
#Set-PowerPlan -Active -Name "Balanced"

#powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c #High performance
#Set-PowerPlan -Active -Name "High performance"

powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 #Ultimate performance
Set-PowerPlan -Active -Name "Ultimate performance"
