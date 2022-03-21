Add-Computer -DomainName adatum -Credential (Get-Credential) -NewName LON-SVR1 -restart


# Add second Domain Controller
Install-ADDSDomainController -domain contoso.local -SafeModeAdministratorPassword ("P@ssw0rd" | ConvertTo-SecureString -AsPlainText -force) -Credential (Get-Credential)
