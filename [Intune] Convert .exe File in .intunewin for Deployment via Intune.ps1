# Die .exe Datei des Tools ist zu Demonstrationszwecken unter C:\Microsoft-Win32-Content-Prep-Tool abgespeichert.
# Das Repository kann hier von Github heruntergeladen werden: https://github.com/microsoft/Microsoft-Win32-Content-Prep-Tool

cd C:\Microsoft-Win32-Content-Prep-Tool
.\IntuneWinAppUtil.exe -c [SourceFolder] -s [SourceEXEFile] -o [DestinationFolder] -q

# Beispiel für die konvertierung von 7-Zip in einem Ordner, welcher sich in meinem OneDrive befindet. Die konvertierte Datei wird wieder im gleichen Ordner abgespeichert.
.\IntuneWinAppUtil.exe -c "C:\Users\${env:username}\OneDrive - CS&M\Microsoft Intune Anwendungen\7-Zip" -s 7z1900.exe -o "C:\Users\${env:username}\OneDrive - CS&M\Microsoft Intune Anwendungen\7-Zip" -q