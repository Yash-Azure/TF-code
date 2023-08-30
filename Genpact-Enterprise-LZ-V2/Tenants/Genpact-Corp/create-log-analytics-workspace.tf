resource "azurerm_log_analytics_workspace" "corp-la-ind-core-01" {
  provider            = azurerm.ind-management-sub
  name                = "corp-la-ind-core-01"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.ind-la-workspace-rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
resource "azurerm_log_analytics_workspace" "corp-la-neu-core-01" {
  provider            = azurerm.neu-management-sub
  name                = "corp-la-neu-core-01"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.neu-la-workspace-rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
resource "azurerm_log_analytics_workspace" "corp-la-eus-core-01" {
  provider            = azurerm.eus-management-sub
  name                = "corp-la-eus-core-01"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.eus-la-workspace-rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}
resource "azurerm_log_analytics_workspace" "corp-la-wus-core-01" {
  provider            = azurerm.wus-management-sub
  name                = "corp-la-wus-core-01"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.wus-la-workspace-rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}