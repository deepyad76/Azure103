#Create a pblic Dns(Portal)

#Create a DNS record in the public DNS 
Invoke-RestMethod http://ipinfo.io/json | Select-Object -ExpandProperty IP
**Note**: Take a note of this IP address. You will use it later in this task.

$rg = Get-AzResourceGroup -Name rg001
New-AzPublicIpAddress -ResourceGroupName $rg.ResourceGroupName -Sku Basic -AllocationMethod Static -Name pip1 -Location $rg.Location

#Add Records A(Public Ip) and Alias (Pip1)
Run Nslookup for testing dns.