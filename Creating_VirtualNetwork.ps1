#Create a virtual network
$myVNet2 = New-AzVirtualNetwork -ResourceGroupName myResourceGroup -Location EastUS -Name myVNet2 -AddressPrefix 10.0.0.0/16

#Verify your new virtual network information
Get-AzVirtualNetwork -Name myVNet2

#Create a subnet
$mySubnet2 = Add-AzVirtualNetworkSubnetConfig -Name mySubnet2 -AddressPrefix 10.0.0.0/24 -VirtualNetwork $myVNet2

#Verify your new subnet information
Get-AzVirtualNetworkSubnetConfig -Name mySubnet2 -VirtualNetwork $myVNet2

#Associate the subnet to the virtual network
$mySubnet2 | Set-AzVirtualNetwork