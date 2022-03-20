
## Add Domain User
New-ADUser -Name "Benjamin Durham" -GivenName "Benjamin" -Surname "Durham" -SamAccountName "Ben" -UserPrincipalName "Ben@contoso.local" -AccountPassword(Read-Host -AsSecureString "Enter Password") -Enabled $true
