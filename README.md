# Diverse-Scripts
## App deployment mit Microsoft Intune
1. Anwendung gemäss der Vorlage "[Intune] Convert .exe File in .intunewin for Deployment via Intune.ps1" für Intune vorbereiten.
2. In den Endpoint Manager (https://endpoint.microsoft.com/) wechseln und nach <b><i>Apps > Windows</b></i> navigieren.
3. Auf "Hinzufügen" klicken und als App-Typ "Windows-App (Win32) auswählen. Danach kann im weiteren Schritt die zuvor erstellte .intunewin Datei ausgewählt werden.
4. Nun kann ein Benutzerfreundliche(r) Name und Beschreibung hinzugefügt werden. Zusätzlich muss noch der Herausgeber eingetragen werden.
5. Als Installationbefehl können folgende verwendet werden. Diese sind jeweils als Silent Install definiert, damit der Benutzer von der Installation nichts mitkriegt.
- <br>7-Zip:</br> 7z1900-x64.exe /S
- <br>Firefox:</br> “Firefox Setup 88.0.exe” -ms
- <br>Google Chrome:</br> ChromeSetup.exe /silent /install
- <br>PDF24:</br> pdf24-creator-10.0.12.exe /VERYSILENT /NORESTART
- <br>TeamViewer Host:</br> TeamViewer_Host_Setup.exe /S
- <br>VLC:</br> vlc-3.0.12-win64.exe /S
6. Als Deinstallationsbefehl muss der jeweilige Pfad zur uninstall.exe (oder wie sie dementsprechend auch heissen wird) angegeben werden. Auch hier habe ich ein paar Beispiele von Anwendungen die ich im Einsatz habe.
- <br>7-Zip:</br> C:\Program Files\7-Zip\Uninstall.exe
- <br>Firefox:</br> C:\Program Files\Mozilla Firefox\uninstall\helper.exe
- <br>Google Chrome:</br> C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
- <br>PDF24:</br> C:\Program Files (x86)\PDF24\unins000.exe
- <br>TeamViewer Host:</br> C:\Program Files (x86)\TeamViewer\uninstall.exe
- <br>VLC:</br> C:\Program Files\VideoLAN\VLC\uninstall.exe