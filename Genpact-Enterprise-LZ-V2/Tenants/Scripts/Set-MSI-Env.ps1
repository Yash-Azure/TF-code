#Set environmental variables for Azure Managed Identity

$env:ARM_USE_MSI="true"
$env:ARM_TENANT_ID="f21abf5a-756b-4321-a32f-946ddee24ca5" #replace with you tenant id
$env:ARM_SUBSCRIPTION_ID="0a4c0117-5917-45e6-a68c-4fd1db47ce1c" #replace with any subscription id that the managed identity has access to deploy resources







