Connect-MicrosoftTeams -Credential $O365cred
$session = New-CsOnlineSession -Credential $O365cred
Import-PsSession $session

Grant-CsTeamsUpgradePolicy -PolicyName UpgradeToTeams -Global