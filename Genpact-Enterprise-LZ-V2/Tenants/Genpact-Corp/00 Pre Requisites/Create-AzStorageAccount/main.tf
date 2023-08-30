resource "random_string" "resource_code" {
  
  length  = 10
  special = false
  upper   = false
}

resource "azurerm_resource_group" "tfstate-rg" {
  provider = azurerm.terraform-backend
  name     = local.rg-name
  location = local.location
}

resource "azurerm_storage_account" "tfstate-str" {
  provider = azurerm.terraform-backend
  name                     = "tfstate${random_string.resource_code.result}"
  resource_group_name      = azurerm_resource_group.tfstate-rg.name
  location                 = azurerm_resource_group.tfstate-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
 

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "tfstate" {
  provider = azurerm.terraform-backend
  name                  = "tfstate-container"
  storage_account_name  = azurerm_storage_account.tfstate-str.name
  container_access_type = "blob"
}

resource "azurerm_management_lock" "resource-group-level" {
  provider = azurerm.terraform-backend
  name       = "resource-group-level"
  scope      = azurerm_resource_group.tfstate-rg.id
  lock_level = "CanNotDelete"
  notes      = "This Resource Group cannot be deleted"
}

