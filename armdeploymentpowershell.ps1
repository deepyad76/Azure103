New-AzResourceGroup -Name "rg01" -Location "eastus"
$templateUri = "C:\Users\sanju\source\repos\AzureResourceGroup5\AzureResourceGroup5\WindowsVirtualMachine.json"
New-AzResourceGroupDeployment -Name rg9deployment1 -ResourceGroupName rg01 -TemplateUri $templateUri -TemplateParameterFile "C:\Users\sanju\source\repos\AzureResourceGroup5\AzureResourceGroup5\WindowsVirtualMachine.parameters.json"