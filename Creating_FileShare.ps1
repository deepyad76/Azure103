# Retrieve storage account and storage account key
$storageContext = New-AzStorageContext mytest <storage-account-Key>

# Create the file share, in this case “logs”
$share = New-AzStorageShare logs -Context $storageContext