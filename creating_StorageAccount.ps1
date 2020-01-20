Get-AzLocation | select Location
$location = "eastus"
$resourceGroup = "rg003"
New-AzResourceGroup -Name $resourceGroup -Location $location
New-AzStorageAccount -ResourceGroupName $resourceGroup -Name "mytest923" -Location $location -SkuName Standard_LRS -Kind StorageV2