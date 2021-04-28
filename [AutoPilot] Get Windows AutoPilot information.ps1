# Zu beginn muss das Script installiert werden
Install-Script -Name Get-WindowsAutoPilotInfo

Get-WindowsAutoPilotInfo -outputfile C:\Users\${env:username}\Downloads\${env:computername}_AutoPilot.csv