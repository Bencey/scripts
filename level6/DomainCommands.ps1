Add-Computer -DomainName adatum -Credential (Get-Credential) -NewName LON-SVR1 -restart


# Add second Domain Controller
Install-ADDSDomainController -domain contoso.local -SafeModeAdministratorPassword ("P@ssw0rd" | ConvertTo-SecureString -AsPlainText -force) -Credential (Get-Credential)

# Create Forest
Install-ADDSForest -DomainName vdom.local -InstallDNS

## Add Domain User
New-ADUser -Name "Benjamin Durham" -GivenName "Benjamin" -Surname "Durham" -SamAccountName "Ben" -UserPrincipalName "Ben@contoso.local" -AccountPassword(Read-Host -AsSecureString "Enter Password") -Enabled $true
