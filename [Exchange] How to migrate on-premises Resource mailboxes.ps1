$UserCredential = Get-Credential

$SESSION = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell -Credential $UserCredential -Authentication Basic –AllowRedirection
Import-PSSession $Session

$OnPremAdmin=Get-Credential
New-MoveRequest –identity "UPN of mailbox to be migrated" -Remote -RemoteHostName "FQDN of your hybrid server" -RemoteCredential $OnPremAdmin -TargetDeliveryDomain "yourdomain.mail.onmicrosoft.com"