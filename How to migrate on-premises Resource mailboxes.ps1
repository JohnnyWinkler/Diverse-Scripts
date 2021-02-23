$UserCredential = Get-Credential

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri "https://outlook.office365.com/powershell-liveid/ Jump " -Credential $UserCredential -Authentication Basic –AllowRedirection
Import-PSSession $Session

$OnPremAdmin=Get-Credential
New-MoveRequest –identity "UPN of mailbox to be migrated" -Remote -RemoteHostName "FQDN of your hybrid server" -RemoteCredential $OnPremAdmin -TargetDeliveryDomain "yourdomain.mail.onmicrosoft.com"