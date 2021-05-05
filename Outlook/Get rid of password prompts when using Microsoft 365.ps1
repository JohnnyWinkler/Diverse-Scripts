# Wenn man Microsoft 365 verwendet, kann es oft vorkommen, dass Outlook immer wieder nach einem Passwort fragt. Dies liegt daran, dass Outlook teils die Legacy Authentifizierungsmethode verwendet.
# Mit diesem Script wird ein neuer Registry-Key erstellt, welcher Outlook zur modernen Authentifizierungsmethode zwingt.
# Basiert auf diesen Troubleshoot von Microsoft: https://docs.microsoft.com/en-us/outlook/troubleshoot/authentication/outlook-prompt-password-modern-authentication-enabled

New-ItemProperty -Path "HKCU:\Software\Microsoft\Exchange" -Name "AlwaysUseMSOAuthForAutoDiscover" -Value ”1”  -PropertyType "DWord"