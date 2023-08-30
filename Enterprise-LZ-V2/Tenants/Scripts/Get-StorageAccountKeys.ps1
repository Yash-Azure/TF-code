#Run this script to get the Azure storage account where the main state file will be hosted

$RESOURCE_GROUP_NAME = "corp-ind-prod-tfstate-rg" #replace with your own resource group name
$STORAGE_ACCOUNT_NAME = "tfstatetnz0vyyb6i" #replace with your own storage account name

$ACCOUNT_KEY=(Get-AzStorageAccountKey -ResourceGroupName $RESOURCE_GROUP_NAME -Name $STORAGE_ACCOUNT_NAME)[0].value
$env:ARM_ACCESS_KEY=$ACCOUNT_KEY