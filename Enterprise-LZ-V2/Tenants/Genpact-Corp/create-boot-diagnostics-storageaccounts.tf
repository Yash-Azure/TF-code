//ind Boot Diagnostics Storage Accounts
resource "azurerm_storage_account" "corpstorindpcorediag01" {
  provider                 = azurerm.ind-management-sub
  name                     = "corpstorindpcorediag0001"
  resource_group_name      = azurerm_resource_group.ind-bootdiagnostics-rgs[0].name
  location                 = var.location-ind
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorinddcorediag01" {
  provider                 = azurerm.ind-management-sub
  name                     = "corpstorinddcorediag0001"
  resource_group_name      = azurerm_resource_group.ind-bootdiagnostics-rgs[1].name
  location                 = var.location-ind
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorindptasdiag01" {
  provider                 = azurerm.ind-management-sub
  name                     = "corpstorindptasdiag0001"
  resource_group_name      = azurerm_resource_group.ind-bootdiagnostics-rgs[2].name
  location                 = var.location-ind
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorindptisdiag01" {
  provider                 = azurerm.ind-management-sub
  name                     = "corpstorindptisdiag0001"
  resource_group_name      = azurerm_resource_group.ind-bootdiagnostics-rgs[3].name
  location                 = var.location-ind
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorinddtasdiag01" {
  provider                 = azurerm.ind-management-sub
  name                     = "corpstorinddtasdiag0001"
  resource_group_name      = azurerm_resource_group.ind-bootdiagnostics-rgs[4].name
  location                 = var.location-ind
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorinddtisdiag01" {
  provider                 = azurerm.ind-management-sub
  name                     = "corpstorinddtisdiag0001"
  resource_group_name      = azurerm_resource_group.ind-bootdiagnostics-rgs[5].name
  location                 = var.location-ind
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
//NEU Boot Diagnostics Storage Accounts
resource "azurerm_storage_account" "corpstorneupcorediag01" {
  provider                 = azurerm.neu-management-sub
  name                     = "corpstorneupcorediag0001"
  resource_group_name      = azurerm_resource_group.neu-bootdiagnostics-rgs[0].name
  location                 = var.location-neu
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorneudcorediag01" {
  provider                 = azurerm.neu-management-sub
  name                     = "corpstorneudcorediag0001"
  resource_group_name      = azurerm_resource_group.neu-bootdiagnostics-rgs[1].name
  location                 = var.location-neu
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorneuptasdiag01" {
  provider                 = azurerm.neu-management-sub
  name                     = "corpstorneuptasdiag0001"
  resource_group_name      = azurerm_resource_group.neu-bootdiagnostics-rgs[2].name
  location                 = var.location-neu
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorneuptisdiag01" {
  provider                 = azurerm.neu-management-sub
  name                     = "corpstorneuptisdiag0001"
  resource_group_name      = azurerm_resource_group.neu-bootdiagnostics-rgs[3].name
  location                 = var.location-neu
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorneudtasdiag01" {
  provider                 = azurerm.neu-management-sub
  name                     = "corpstorneudtasdiag0001"
  resource_group_name      = azurerm_resource_group.neu-bootdiagnostics-rgs[4].name
  location                 = var.location-neu
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorneudtisdiag01" {
  provider                 = azurerm.neu-management-sub
  name                     = "corpstorneudtisdiag0001"
  resource_group_name      = azurerm_resource_group.neu-bootdiagnostics-rgs[5].name
  location                 = var.location-neu
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
//eus Boot Diagnostics Storage Accounts
resource "azurerm_storage_account" "corpstoreuspcorediag01" {
  provider                 = azurerm.eus-management-sub
  name                     = "corpstoreuspcorediag0001"
  resource_group_name      = azurerm_resource_group.eus-bootdiagnostics-rgs[0].name
  location                 = var.location-eus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstoreusdcorediag01" {
  provider                 = azurerm.eus-management-sub
  name                     = "corpstoreusdcorediag0001"
  resource_group_name      = azurerm_resource_group.eus-bootdiagnostics-rgs[1].name
  location                 = var.location-eus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstoreusptasdiag01" {
  provider                 = azurerm.eus-management-sub
  name                     = "corpstoreusptasdiag0001"
  resource_group_name      = azurerm_resource_group.eus-bootdiagnostics-rgs[2].name
  location                 = var.location-eus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstoreusptisdiag01" {
  provider                 = azurerm.eus-management-sub
  name                     = "corpstoreusptisdiag0001"
  resource_group_name      = azurerm_resource_group.eus-bootdiagnostics-rgs[3].name
  location                 = var.location-eus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstoreusdtasdiag01" {
  provider                 = azurerm.eus-management-sub
  name                     = "corpstoreusdtasdiag0001"
  resource_group_name      = azurerm_resource_group.eus-bootdiagnostics-rgs[4].name
  location                 = var.location-eus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstoreusdtisdiag01" {
  provider                 = azurerm.eus-management-sub
  name                     = "corpstoreusdtisdiag0001"
  resource_group_name      = azurerm_resource_group.eus-bootdiagnostics-rgs[5].name
  location                 = var.location-eus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
//WUS Boot Diagnostics Storage Accounts
resource "azurerm_storage_account" "corpstorwuspcorediag01" {
  provider                 = azurerm.wus-management-sub
  name                     = "corpstorwuspcorediag0001"
  resource_group_name      = azurerm_resource_group.wus-bootdiagnostics-rgs[0].name
  location                 = var.location-wus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorwusdcorediag01" {
  provider                 = azurerm.wus-management-sub
  name                     = "corpstorwusdcorediag0001"
  resource_group_name      = azurerm_resource_group.wus-bootdiagnostics-rgs[1].name
  location                 = var.location-wus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorwusptasdiag01" {
  provider                 = azurerm.wus-management-sub
  name                     = "corpstorwusptasdiag0001"
  resource_group_name      = azurerm_resource_group.wus-bootdiagnostics-rgs[2].name
  location                 = var.location-wus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorwusptisdiag01" {
  provider                 = azurerm.wus-management-sub
  name                     = "corpstorwusptisdiag0001"
  resource_group_name      = azurerm_resource_group.wus-bootdiagnostics-rgs[3].name
  location                 = var.location-wus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorwusdtasdiag01" {
  provider                 = azurerm.wus-management-sub
  name                     = "corpstorwusdtasdiag0001"
  resource_group_name      = azurerm_resource_group.wus-bootdiagnostics-rgs[4].name
  location                 = var.location-wus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_account" "corpstorwusdtisdiag01" {
  provider                 = azurerm.wus-management-sub
  name                     = "corpstorwusdtisdiag0001"
  resource_group_name      = azurerm_resource_group.wus-bootdiagnostics-rgs[5].name
  location                 = var.location-wus
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
