$vmname = "C6M2-LON-SVR1"
$iso = "C:\LOCATION\Server2022.iso"
$switch = 'C6M2'

$vm = New-vm -name $vmname -Generation 2 -MemoryStartupBytes 2GB -NewVHDpath "C:\LOCATION\VM\$vmname.vhdx" -NewVHDSizeBytes 60GB -SwitchName $switch
Set-VMProcessor $vm  -Count (Get-VMHost).LogicalProcessorCount
Set-VMMemory $vm -DynamicMemoryEnabled $true -MaximumBytes 4GB
Set-vm $vm -CheckpointType Disabled
add-vmdvddrive -VM $vm -path $iso
$drive = Get-vmdvddrive -VM $vm

Set-VMFirmware -VM $vm -FirstBootDevice $drive
