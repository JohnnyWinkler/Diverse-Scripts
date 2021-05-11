# Als erstes muss eine neue Sicherheitsgruppe erstellt werden. Diese nenne ich in diesem Beispiel "CreateNewTeams".
# Dort müssen nun alle Benutzer hinzugefügt werden, welche keinen Schaltfläche haben sollen.
# Frage für weiterfahren hinzugefügt
$title    = 'Es wird empfohlen erst weiterzufahren, wenn im Voraus eine neue Sicherheitsgruppe mit dem Namen "CreateNewTeams" hinzugefügt wurde.'
$question = 'Bist du sicher das du weiterfahren möchtest?'
$choices  = '&Yes', '&No'

$decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)

if ($decision -eq 0) {

# Vorherige AzureADPreview entfernen und neu installieren
Uninstall-Module AzureADPreview
Uninstall-Module azuread
Install-Module AzureADPreview

# Verbindung mit Teams Connector herstellen
Connect-MicrosoftTeams -Credential $O365cred
$session = New-CsOnlineSession -Credential $O365cred
Import-PsSession $session

$GroupName = "CreateNewTeams"
$AllowGroupCreation = "False"

Connect-AzureAD

$settingsObjectID = (Get-AzureADDirectorySetting | Where-object -Property Displayname -Value "Group.Unified" -EQ).id
if(!$settingsObjectID)
{
      $template = Get-AzureADDirectorySettingTemplate | Where-object {$_.displayname -eq "group.unified"}
    $settingsCopy = $template.CreateDirectorySetting()
    New-AzureADDirectorySetting -DirectorySetting $settingsCopy
    $settingsObjectID = (Get-AzureADDirectorySetting | Where-object -Property Displayname -Value "Group.Unified" -EQ).id
}

$settingsCopy = Get-AzureADDirectorySetting -Id $settingsObjectID
$settingsCopy["EnableGroupCreation"] = $AllowGroupCreation

if($GroupName)
{
    $settingsCopy["GroupCreationAllowedGroupId"] = (Get-AzureADGroup -Filter "DisplayName eq '$GroupName'").objectId
}
else {
$settingsCopy["GroupCreationAllowedGroupId"] = $GroupName
}
Set-AzureADDirectorySetting -Id $settingsObjectID -DirectorySetting $settingsCopy

(Get-AzureADDirectorySetting -Id $settingsObjectID).Values

} else {
    exit
}