# Diverse-Scripts
## App deployment mit Microsoft Intune
1. Anwendung gemäss der Vorlage ["Convert .exe File in .intunewin for Deployment via Intune.ps1"](https://github.com/JohnnyWinkler/Diverse-Scripts/blob/main/Endpoint%20Manager/Convert%20.exe%20File%20in%20.intunewin%20for%20Deployment%20via%20Intune.ps1) für Intune vorbereiten.
2. In den Endpoint Manager (https://endpoint.microsoft.com/) wechseln und nach <b><i>[Apps > Windows](https://endpoint.microsoft.com/?ref=AdminCenter#blade/Microsoft_Intune_DeviceSettings/AppsWindowsMenu/windowsApps)</b></i> navigieren.
3. Auf "Hinzufügen" klicken und als App-Typ "Windows-App (Win32) auswählen. Danach kann im weiteren Schritt die zuvor erstellte .intunewin Datei ausgewählt werden.
4. Nun kann ein Benutzerfreundliche(r) Name und Beschreibung hinzugefügt werden. Zusätzlich muss noch der Herausgeber eingetragen werden.
5. Als Installationbefehl können folgende verwendet werden. Diese sind jeweils als Silent Install definiert, damit der Benutzer von der Installation nichts mitkriegt.
- <b>7-Zip:</b> 7z1900-x64.exe /S
- <b>Firefox:</b> “Firefox Setup 88.0.exe” -ms
- <b>Google Chrome:</b> ChromeSetup.exe /silent /install
- <b>PDF24:</b> pdf24-creator-10.0.12.exe /VERYSILENT /NORESTART
- <b>TeamViewer Host:</b> TeamViewer_Host_Setup.exe /S
- <b>VLC:</b> vlc-3.0.12-win64.exe /S
6. Als Deinstallationsbefehl muss der jeweilige Pfad zur uninstall.exe (oder wie sie dementsprechend auch heissen wird) angegeben werden. Auch hier habe ich ein paar Beispiele von Anwendungen die ich im Einsatz habe.
- <b>7-Zip:</b> C:\Program Files\7-Zip\Uninstall.exe
- <b>Firefox:</b> C:\Program Files\Mozilla Firefox\uninstall\helper.exe
- <b>Google Chrome:</b> C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
- <b>PDF24:</b> C:\Program Files (x86)\PDF24\unins000.exe
- <b>TeamViewer Host:</b> C:\Program Files (x86)\TeamViewer\uninstall.exe
- <b>VLC:</b> C:\Program Files\VideoLAN\VLC\uninstall.exe
7. Bei den Anforderungen würde ich jeweils x64 als Betriebsystemarchitektur auswählen und die älteste Windows Version (Windows 10 1607). Bei Bedarf können noch Speicherplatz etc. definiert werden. Dies ist aber optional.
8. Bei den Erkennungsregeln als Formal soll "Erkennungsregeln manuell konfigurieren" ausgewählt werden. Danach kann man wie bei den Deinstallationsbefehlen den korrekten Pfad nehmen und anschliessend die .exe Datei der Anwendung auswählen. Als überprüfung sollte diejenige Option ausgewählt sein welche prüft ob die Datei vorhanden ist oder nicht.
9. Abhängigkeiten und Ablösungen sind optional und wurden bei mir nicht verwendet.
10. Für die Zuweisung habe ich im vorfeld eine neue Sicherheitsgruppe "Intune App Deployment" erstellt. Nun kann bei der Zuweisung bei Erforderlich die Sicherheitsgruppe ausgewählt werden. Dies führt nämlich dazu, dass die Anwendungen automatisch auf dem Client installiert werden.