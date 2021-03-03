# Connect with Exchange Online
Connect-ExchangeOnline

# Get a view of available Public Folders (even if they aren't displayed in the Exchange Admin Center)
Get-MailPublicFolder

# Delete / Disable the Public Folder
Get-MailPublicFolder [Name of the Public Folder] | Disable-MailPublicFolder