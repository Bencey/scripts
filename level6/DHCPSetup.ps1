
#### 
# Install the DHCP Feature
####
#Install-WindowsFeature -Name 'DHCP' -IncludeManagementTools

####
# Install the DHCP security Groups
####
#netsh dhcp add securitygroups


#Restart-Service dhcpserver


####
# Add the DHCP Server to the Active Directory
####
#Add-DhcpServerInDC -DnsName lon-dc1.Adatum.local -IPAddress 172.16.0.10


####
# Check to make sure the DHCP server has been added to the Active Directory Controller
####
#Get-DhcpServerInDC



Add-DhcpServerV4Scope -Name "DHCP" -StartRange 172.16.0.50 -EndRange 172.16.0.199 -SubnetMask 255.255.255.0

Set-DhcpServerv4OptionValue -DnsServer 172.16.0.10 -ROuter 172.16.0.10

# Set Lease Duration to 4 hours
Set-DhcpServerv4Scope -ScopeId 172.16.0.10 -LeaseDuration  0.04:00:00

#Get-DhcpServerv4Scope
