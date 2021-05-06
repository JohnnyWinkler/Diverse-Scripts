# Diverse-Scripts
In diesem Repository werden hilfreiche Scripts abgelegt, welche mir hin und wieder schon in diversen Situationen geholfen haben. Dieses Repo wird laufend aktualisiert.
Nebst Scripts werden auch ein paar kleine Guides hier im README aufgelistet und mit einem Permalink ausgestattet.
## App deployment mit Microsoft Intune
1. Anwendung gemäss der Vorlage [Convert .exe File in .intunewin for Deployment via Intune.ps1](https://github.com/JohnnyWinkler/Diverse-Scripts/blob/main/Endpoint%20Manager/Convert%20.exe%20File%20in%20.intunewin%20for%20Deployment%20via%20Intune.ps1) für Intune vorbereiten Die Anwendung kann [hier](https://github.com/microsoft/Microsoft-Win32-Content-Prep-Tool) heruntergeladen werden.
2. In den Endpoint Manager (https://endpoint.microsoft.com/) wechseln und nach <b><i>[Apps > Windows](https://endpoint.microsoft.com/?ref=AdminCenter#blade/Microsoft_Intune_DeviceSettings/AppsWindowsMenu/windowsApps)</b></i> navigieren.
3. Auf "Hinzufügen" klicken und als App-Typ "Windows-App (Win32) auswählen. Danach kann im weiteren Schritt die zuvor erstellte .intunewin Datei ausgewählt werden.
4. Nun kann ein Benutzerfreundliche(r) Name und Beschreibung hinzugefügt werden. Zusätzlich muss noch der Herausgeber eingetragen werden.
5. Als Installationbefehl können folgende verwendet werden. Diese sind jeweils als Silent Install definiert, damit der Benutzer von der Installation nichts mitkriegt.
- <b>[7-Zip:](https://www.7-zip.org/a/7z1900-x64.exe)</b> 7z1900-x64.exe /S
- <b>[Firefox:](https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=de)</b> “Firefox Setup 88.0.exe” -ms
- <b>[Google Chrome:](https://www.google.com/intl/de/chrome/)</b> ChromeSetup.exe /silent /install
- <b>[PDF24:](https://creator.pdf24.org/download/?version=10.0.12&tou=exe)</b> pdf24-creator-10.0.12.exe /VERYSILENT /NORESTART
- <b>[TeamViewer Host:](https://download.teamviewer.com/download/TeamViewer_Host_Setup.exe)</b> TeamViewer_Host_Setup.exe /S
- <b>[VLC:](https://get.videolan.org/vlc/3.0.12/win64/vlc-3.0.12-win64.exe)</b> vlc-3.0.12-win64.exe /S
- <b>[Visual Studio Code:](https://code.visualstudio.com/docs/?dv=win64)</b> VSCodeSetup-x64-1.56.0.exe /VERYSILENT /NORESTART /MERGETASKS=!runcode
- <b>[Microsoft PowerToys:](https://github.com/microsoft/PowerToys/releases/download/v0.37.0/PowerToysSetup-0.37.0-x64.exe)</b> PowerToysSetup-0.37.0-x64.exe --silent
6. Als Deinstallationsbefehl muss der jeweilige Pfad zur uninstall.exe (oder wie sie dementsprechend auch heissen wird) angegeben werden. Auch hier habe ich ein paar Beispiele von Anwendungen die ich im Einsatz habe.
- <b>7-Zip:</b> C:\Program Files\7-Zip\Uninstall.exe
- <b>Firefox:</b> C:\Program Files\Mozilla Firefox\uninstall\helper.exe /s
- <b>Google Chrome:</b> C:\Program Files (x86)\Google\Chrome\Application\90.0.4430.93\Installer\setup.exe --uninstall --multi-install --chrome --system-level
- <b>PDF24:</b> C:\Program Files (x86)\PDF24\unins000.exe
- <b>TeamViewer Host:</b> C:\Program Files (x86)\TeamViewer\uninstall.exe
- <b>VLC:</b> C:\Program Files\VideoLAN\VLC\uninstall.exe
- <b>Visual Studio Code:</b> C:\Program Files\Microsoft VS Code\unins000.exe" /VERYSILENT /NORESTART
7. Bei den Anforderungen würde ich jeweils x64 als Betriebsystemarchitektur auswählen und die älteste Windows Version (Windows 10 1607). Bei Bedarf können noch Speicherplatz etc. definiert werden. Dies ist aber optional.
8. Bei den Erkennungsregeln als Formal soll "Erkennungsregeln manuell konfigurieren" ausgewählt werden. Danach kann man wie bei den Deinstallationsbefehlen den korrekten Pfad nehmen und anschliessend die .exe Datei der Anwendung auswählen. Als überprüfung sollte diejenige Option ausgewählt sein welche prüft ob die Datei vorhanden ist oder nicht.
9. Abhängigkeiten und Ablösungen sind optional und wurden bei mir nicht verwendet.
10. Für die Zuweisung habe ich im vorfeld eine neue Sicherheitsgruppe "Intune App Deployment" erstellt. Nun kann bei der Zuweisung bei Erforderlich die Sicherheitsgruppe ausgewählt werden. Dies führt nämlich dazu, dass die Anwendungen automatisch auf dem Client installiert werden.