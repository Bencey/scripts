New-VMSwitch NAT -SwitchType Internal

Get-NetAdapter (To Get interface Index)

New-NetIPAddress -InterfaceIndex (From above) -IPAddress 172.16.0.1 -PrefixLength 24
