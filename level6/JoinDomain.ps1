New-NetIPAddress -interfaceAlias "Ethernet" `
-IPAddress 172.16.0.20 `
-PrefixLength 24 `
-DefaultGateway 172.16.0.10

Set-DnsClientServerAddress -InterfaceAlias "Ethernet" `
-ServerAddresses 172.16.0.10 

Add-Computer -DomainName adatum -Credential (Get-Credential) -NewName LON-SVR1 -restart
