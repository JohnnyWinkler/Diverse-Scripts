# Zu beginn muss das Script installiert werden
Install-Script -Name Get-WindowsAutoPilotInfo

# Nun wird ein Auszug mit den Nötigen Informationen gemacht. Dieser wird im Download-Ordner des aktuellen Users als .csv Datei abgespeichert.
# Beim Dateinamen wird zusätzlich noch der Computername hinzugefügt.
Get-WindowsAutoPilotInfo -outputfile C:\Users\${env:username}\Downloads\${env:computername}_AutoPilot.csv