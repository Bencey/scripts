New-VMSwitch NAT -SwitchType Internal

Get-NetAdapter (To Get interface Index)

New-NetIPAddress -InterfaceIndex (From above) -IPAddress 172.16.0.1 -PrefixLength 24

New-netnat -Name NAT -InternalIPInterfaceAddressPrefix "172.16.0.0/24"
Add-NetNatStaticMapping -NatName NAT -Protocol TCP -ExternalIPAddress 0.0.0.0 -InternalIPAddress 
