New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress 172.16.0.1 -PrefixLength 24
Set-DnsclientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses 172.16.0.10
rename-Computer -NewName LON-RTR
