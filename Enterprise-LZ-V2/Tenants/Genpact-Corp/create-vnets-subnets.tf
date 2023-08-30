//ind Platform VNETs
resource "azurerm_virtual_network" "corp-ind-shared-connectivity" {
  provider            = azurerm.ind-connectivity-sub
  name                = "corp-ind-shared-security"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-shared-connectivity-core-network.name
  address_space       = ["10.248.90.0/23"]


}
resource "azurerm_virtual_network" "corp-ind-prod-shared-management" {
  provider            = azurerm.ind-management-sub
  name                = "corp-ind-prod-shared-management"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-shared-management-core-network.name
  address_space       = ["10.248.0.0/23"]


}
resource "azurerm_virtual_network" "corp-ind-dev-shared-management" {
  provider            = azurerm.ind-management-sub
  name                = "corp-ind-dev-shared-management"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-dev-shared-management-core-network.name
  address_space       = ["10.248.2.0/23"]


}
resource "azurerm_virtual_network" "corp-ind-prod-shared-identity" {
  provider            = azurerm.ind-identity-sub
  name                = "corp-ind-prod-shared-identity"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-shared-prod-identity-core-network.name
  address_space       = ["10.248.4.0/23"]


}
resource "azurerm_virtual_network" "corp-ind-dev-shared-identity" {
  provider            = azurerm.ind-identity-sub
  name                = "corp-ind-dev-shared-identity"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-shared-dev-identity-core-network.name
  address_space       = ["10.248.6.0/23"]


}
//ind Landing Zone VNETS
resource "azurerm_virtual_network" "corp-ind-prod-tis" {
  provider            = azurerm.ind-prod-tis-sub
  name                = "corp-ind-prod-tis"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-tis-core-network.name
  address_space       = ["10.248.8.0/23", "10.248.10.0/23", "10.248.12.0/23", "10.248.14.0/23"]


}
resource "azurerm_virtual_network" "corp-ind-prod-tas" {
  provider            = azurerm.ind-prod-tas-sub
  name                = "corp-ind-prod-tas"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-tas-core-network.name
  address_space       = ["10.248.16.0/23", "10.248.18.0/23", "10.248.20.0/23", "10.248.22.0/23"]


}
resource "azurerm_virtual_network" "corp-ind-dev-tis" {
  provider            = azurerm.ind-dev-tis-sub
  name                = "corp-ind-dev-tis"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-dev-tis-core-network.name
  address_space       = ["10.248.24.0/23", "10.248.26.0/23", "10.248.28.0/23", "10.248.30.0/23"]


}
resource "azurerm_virtual_network" "corp-ind-dev-tas" {
  provider            = azurerm.ind-dev-tas-sub
  name                = "corp-ind-dev-tas"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-dev-tas-core-network.name
  address_space       = ["10.248.32.0/23", "10.248.34.0/23", "10.248.36.0/23", "10.248.38.0/23"]


}
resource "azurerm_virtual_network" "corp-ind-uat-tis" {
  provider            = azurerm.ind-uat-tis-sub
  name                = "corp-ind-uat-tis"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-uat-tis-core-network.name
  address_space       = ["10.248.40.0/23", "10.248.42.0/23"]


}
resource "azurerm_virtual_network" "corp-ind-uat-tas" {
  provider            = azurerm.ind-uat-tas-sub
  name                = "corp-ind-uat-tas"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-uat-tas-core-network.name
  address_space       = ["10.248.44.0/23", "10.248.46.0/23"]


}
// Az NEU VNETS
//neu Platform VNETs
resource "azurerm_virtual_network" "corp-neu-shared-connectivity" {
  provider            = azurerm.neu-connectivity-sub
  name                = "corp-neu-shared-security"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-shared-connectivity-core-network.name
  address_space       = ["10.251.90.0/23"]


}
resource "azurerm_virtual_network" "corp-neu-prod-shared-management" {
  provider            = azurerm.neu-management-sub
  name                = "corp-neu-prod-shared-management"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-prod-shared-management-core-network.name
  address_space       = ["10.251.0.0/23"]


}
resource "azurerm_virtual_network" "corp-neu-dev-shared-management" {
  provider            = azurerm.neu-management-sub
  name                = "corp-neu-dev-shared-management"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-dev-shared-management-core-network.name
  address_space       = ["10.251.2.0/23"]


}
resource "azurerm_virtual_network" "corp-neu-prod-shared-identity" {
  provider            = azurerm.neu-identity-sub
  name                = "corp-neu-prod-shared-identity"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-shared-prod-identity-core-network.name
  address_space       = ["10.251.4.0/23"]


}
resource "azurerm_virtual_network" "corp-neu-dev-shared-identity" {
  provider            = azurerm.neu-identity-sub
  name                = "corp-neu-dev-shared-identity"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-shared-dev-identity-core-network.name
  address_space       = ["10.251.6.0/23"]


}
//NEU Landing Zone VNETS
resource "azurerm_virtual_network" "corp-neu-prod-tis" {
  provider            = azurerm.neu-prod-tis-sub
  name                = "corp-neu-prod-tis"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-prod-tis-core-network.name
  address_space       = ["10.251.8.0/23", "10.251.10.0/23", "10.251.12.0/23", "10.251.14.0/23"]


}
resource "azurerm_virtual_network" "corp-neu-prod-tas" {
  provider            = azurerm.neu-prod-tas-sub
  name                = "corp-neu-prod-tas"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-prod-tas-core-network.name
  address_space       = ["10.251.16.0/23", "10.251.18.0/23", "10.251.20.0/23", "10.251.22.0/23"]


}
resource "azurerm_virtual_network" "corp-neu-dev-tis" {
  provider            = azurerm.neu-dev-tis-sub
  name                = "corp-neu-dev-tis"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-dev-tis-core-network.name
  address_space       = ["10.251.24.0/23", "10.251.26.0/23", "10.251.28.0/23", "10.251.30.0/23"]


}
resource "azurerm_virtual_network" "corp-neu-dev-tas" {
  provider            = azurerm.neu-dev-tas-sub
  name                = "corp-neu-dev-tas"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-dev-tas-core-network.name
  address_space       = ["10.251.32.0/23", "10.251.34.0/23", "10.251.36.0/23", "10.251.38.0/23"]


}
resource "azurerm_virtual_network" "corp-neu-uat-tis" {
  provider            = azurerm.neu-uat-tis-sub
  name                = "corp-neu-uat-tis"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-uat-tis-core-network.name
  address_space       = ["10.251.40.0/23", "10.251.42.0/23"]


}
resource "azurerm_virtual_network" "corp-neu-uat-tas" {
  provider            = azurerm.neu-uat-tas-sub
  name                = "corp-neu-uat-tas"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-uat-tas-core-network.name
  address_space       = ["10.251.44.0/23", "10.251.46.0/23"]


}
//EUS VNETS
//eus Platform VNETs
resource "azurerm_virtual_network" "corp-eus-shared-connectivity" {
  provider            = azurerm.eus-connectivity-sub
  name                = "corp-eus-shared-security"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-shared-connectivity-core-network.name
  address_space       = ["10.249.90.0/23"]


}
resource "azurerm_virtual_network" "corp-eus-prod-shared-management" {
  provider            = azurerm.eus-management-sub
  name                = "corp-eus-prod-shared-management"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-prod-shared-management-core-network.name
  address_space       = ["10.249.0.0/23"]


}
resource "azurerm_virtual_network" "corp-eus-dev-shared-management" {
  provider            = azurerm.eus-management-sub
  name                = "corp-eus-dev-shared-management"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-dev-shared-management-core-network.name
  address_space       = ["10.249.2.0/23"]


}
resource "azurerm_virtual_network" "corp-eus-prod-shared-identity" {
  provider            = azurerm.neu-identity-sub
  name                = "corp-eus-prod-shared-identity"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-shared-prod-identity-core-network.name
  address_space       = ["10.249.4.0/23"]


}
resource "azurerm_virtual_network" "corp-eus-dev-shared-identity" {
  provider            = azurerm.eus-identity-sub
  name                = "corp-eus-dev-shared-identity"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-shared-dev-identity-core-network.name
  address_space       = ["10.249.6.0/23"]


}
//EUSLanding Zone VNETS
resource "azurerm_virtual_network" "corp-eus-prod-tis" {
  provider            = azurerm.eus-prod-tis-sub
  name                = "corp-eus-prod-tis"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-prod-tis-core-network.name
  address_space       = ["10.249.8.0/23", "10.249.10.0/23", "10.249.12.0/23", "10.249.14.0/23"]


}
resource "azurerm_virtual_network" "corp-eus-prod-tas" {
  provider            = azurerm.eus-prod-tas-sub
  name                = "corp-eus-prod-tas"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-prod-tas-core-network.name
  address_space       = ["10.249.16.0/23", "10.249.18.0/23", "10.249.20.0/23", "10.249.22.0/23"]


}
resource "azurerm_virtual_network" "corp-eus-dev-tis" {
  provider            = azurerm.eus-dev-tis-sub
  name                = "corp-eus-dev-tis"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-dev-tis-core-network.name
  address_space       = ["10.249.24.0/23", "10.249.26.0/23", "10.249.28.0/23", "10.249.30.0/23"]


}
resource "azurerm_virtual_network" "corp-eus-dev-tas" {
  provider            = azurerm.eus-dev-tas-sub
  name                = "corp-eus-dev-tas"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-dev-tas-core-network.name
  address_space       = ["10.249.32.0/23", "10.249.34.0/23", "10.249.36.0/23", "10.249.38.0/23"]


}
resource "azurerm_virtual_network" "corp-eus-uat-tis" {
  provider            = azurerm.eus-uat-tis-sub
  name                = "corp-eus-uat-tis"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-uat-tis-core-network.name
  address_space       = ["10.249.40.0/23", "10.249.42.0/23"]


}
resource "azurerm_virtual_network" "corp-eus-uat-tas" {
  provider            = azurerm.eus-uat-tas-sub
  name                = "corp-eus-uat-tas"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-uat-tas-core-network.name
  address_space       = ["10.249.44.0/23", "10.249.46.0/23"]


}
//WUS Platform VNETs
resource "azurerm_virtual_network" "corp-wus-shared-connectivity" {
  provider            = azurerm.wus-connectivity-sub
  name                = "corp-wus-shared-security"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-shared-connectivity-core-network.name
  address_space       = ["10.250.90.0/23"]


}
resource "azurerm_virtual_network" "corp-wus-prod-shared-management" {
  provider            = azurerm.wus-management-sub
  name                = "corp-wus-prod-shared-management"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-prod-shared-management-core-network.name
  address_space       = ["10.250.0.0/23"]


}
resource "azurerm_virtual_network" "corp-wus-dev-shared-management" {
  provider            = azurerm.wus-management-sub
  name                = "corp-wus-dev-shared-management"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-dev-shared-management-core-network.name
  address_space       = ["10.250.2.0/23"]


}
resource "azurerm_virtual_network" "corp-wus-prod-shared-identity" {
  provider            = azurerm.wus-identity-sub
  name                = "corp-wus-prod-shared-identity"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-shared-prod-identity-core-network.name
  address_space       = ["10.250.4.0/23"]


}
resource "azurerm_virtual_network" "corp-wus-dev-shared-identity" {
  provider            = azurerm.wus-identity-sub
  name                = "corp-wus-dev-shared-identity"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-shared-dev-identity-core-network.name
  address_space       = ["10.250.6.0/23"]


}
//wus Landing Zone VNETS
resource "azurerm_virtual_network" "corp-wus-prod-tis" {
  provider            = azurerm.wus-prod-tis-sub
  name                = "corp-wus-prod-tis"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-prod-tis-core-network.name
  address_space       = ["10.250.8.0/23", "10.250.10.0/23", "10.250.12.0/23", "10.250.14.0/23"]


}
resource "azurerm_virtual_network" "corp-wus-prod-tas" {
  provider            = azurerm.wus-prod-tas-sub
  name                = "corp-wus-prod-tas"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-prod-tas-core-network.name
  address_space       = ["10.250.16.0/23", "10.250.18.0/23", "10.250.20.0/23", "10.250.22.0/23"]


}
resource "azurerm_virtual_network" "corp-wus-dev-tis" {
  provider            = azurerm.wus-dev-tis-sub
  name                = "corp-wus-dev-tis"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-dev-tis-core-network.name
  address_space       = ["10.250.24.0/23", "10.250.26.0/23", "10.250.28.0/23", "10.250.30.0/23"]


}
resource "azurerm_virtual_network" "corp-wus-dev-tas" {
  provider            = azurerm.wus-dev-tas-sub
  name                = "corp-wus-dev-tas"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-dev-tas-core-network.name
  address_space       = ["10.250.32.0/23", "10.250.34.0/23", "10.250.36.0/23", "10.250.38.0/23"]


}
resource "azurerm_virtual_network" "corp-wus-uat-tis" {
  provider            = azurerm.wus-uat-tis-sub
  name                = "corp-wus-uat-tis"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-uat-tis-core-network.name
  address_space       = ["10.250.40.0/23", "10.250.42.0/23"]


}
resource "azurerm_virtual_network" "corp-wus-uat-tas" {
  provider            = azurerm.wus-uat-tas-sub
  name                = "corp-wus-uat-tas"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-uat-tas-core-network.name
  address_space       = ["10.250.44.0/23", "10.250.46.0/23"]


}
//Create Subnets for Platform Resources
resource "azurerm_subnet" "corp-ind-prod-management-subnet" {
  provider             = azurerm.ind-management-sub
  count                = length(local.ind-prod-management-subnet_name)
  name                 = local.ind-prod-management-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-prod-shared-management-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-prod-shared-management.name
  address_prefixes     = [local.ind-prod-management-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-ind-dev-management-subnet" {
  provider             = azurerm.ind-management-sub
  count                = length(local.ind-dev-management-subnet_name)
  name                 = local.ind-dev-management-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-dev-shared-management-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-dev-shared-management.name
  address_prefixes     = [local.ind-dev-management-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-ind-prod-identity-subnet" {
  provider             = azurerm.ind-identity-sub
  count                = length(local.ind-prod-identity-subnet_name)
  name                 = local.ind-prod-identity-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-shared-prod-identity-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-prod-shared-identity.name
  address_prefixes     = [local.ind-prod-identity-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-ind-dev-identity-subnet" {
  provider             = azurerm.ind-identity-sub
  count                = length(local.ind-dev-identity-subnet_name)
  name                 = local.ind-dev-identity-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-shared-dev-identity-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-dev-shared-identity.name
  address_prefixes     = [local.ind-dev-identity-subnet_address_prefixes[count.index]]
}
//
resource "azurerm_subnet" "corp-eus-prod-management-subnet" {
  provider             = azurerm.eus-management-sub
  count                = length(local.eus-prod-management-subnet_name)
  name                 = local.eus-prod-management-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-prod-shared-management-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-prod-shared-management.name
  address_prefixes     = [local.eus-prod-management-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-eus-dev-management-subnet" {
  provider             = azurerm.eus-management-sub
  count                = length(local.eus-dev-management-subnet_name)
  name                 = local.eus-dev-management-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-dev-shared-management-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-dev-shared-management.name
  address_prefixes     = [local.eus-dev-management-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-eus-prod-identity-subnet" {
  provider             = azurerm.eus-identity-sub
  count                = length(local.eus-prod-identity-subnet_name)
  name                 = local.eus-prod-identity-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-shared-prod-identity-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-prod-shared-identity.name
  address_prefixes     = [local.eus-prod-identity-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-eus-dev-identity-subnet" {
  provider             = azurerm.eus-identity-sub
  count                = length(local.eus-dev-identity-subnet_name)
  name                 = local.eus-dev-identity-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-shared-dev-identity-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-dev-shared-identity.name
  address_prefixes     = [local.eus-dev-identity-subnet_address_prefixes[count.index]]
}
//
resource "azurerm_subnet" "corp-wus-prod-management-subnet" {
  provider             = azurerm.wus-management-sub
  count                = length(local.wus-prod-management-subnet_name)
  name                 = local.wus-prod-management-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-prod-shared-management-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-prod-shared-management.name
  address_prefixes     = [local.wus-prod-management-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-wus-dev-management-subnet" {
  provider             = azurerm.wus-management-sub
  count                = length(local.wus-dev-management-subnet_name)
  name                 = local.wus-dev-management-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-dev-shared-management-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-dev-shared-management.name
  address_prefixes     = [local.wus-dev-management-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-wus-prod-identity-subnet" {
  provider             = azurerm.wus-identity-sub
  count                = length(local.wus-prod-identity-subnet_name)
  name                 = local.wus-prod-identity-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-shared-prod-identity-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-prod-shared-identity.name
  address_prefixes     = [local.wus-prod-identity-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-wus-dev-identity-subnet" {
  provider             = azurerm.wus-identity-sub
  count                = length(local.wus-dev-identity-subnet_name)
  name                 = local.wus-dev-identity-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-shared-dev-identity-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-dev-shared-identity.name
  address_prefixes     = [local.wus-dev-identity-subnet_address_prefixes[count.index]]
}
//
resource "azurerm_subnet" "corp-neu-prod-management-subnet" {
  provider             = azurerm.neu-management-sub
  count                = length(local.neu-prod-management-subnet_name)
  name                 = local.neu-prod-management-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-prod-shared-management-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-prod-shared-management.name
  address_prefixes     = [local.neu-prod-management-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-neu-dev-management-subnet" {
  provider             = azurerm.neu-management-sub
  count                = length(local.neu-dev-management-subnet_name)
  name                 = local.neu-dev-management-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-dev-shared-management-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-dev-shared-management.name
  address_prefixes     = [local.neu-dev-management-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-neu-prod-identity-subnet" {
  provider             = azurerm.neu-identity-sub
  count                = length(local.neu-prod-identity-subnet_name)
  name                 = local.neu-prod-identity-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-shared-prod-identity-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-prod-shared-identity.name
  address_prefixes     = [local.neu-prod-identity-subnet_address_prefixes[count.index]]
}
resource "azurerm_subnet" "corp-neu-dev-identity-subnet" {
  provider             = azurerm.neu-identity-sub
  count                = length(local.neu-dev-identity-subnet_name)
  name                 = local.neu-dev-identity-subnet_name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-shared-dev-identity-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-dev-shared-identity.name
  address_prefixes     = [local.neu-dev-identity-subnet_address_prefixes[count.index]]
}
//Landing Zones Subnets
//IND
resource "azurerm_subnet" "corp-ind-prod-tis-subnet" {
  provider             = azurerm.ind-prod-tis-sub
  count                = length(local.ind-prod-tis-subnet-name)
  name                 = local.ind-prod-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-prod-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-prod-tis.name
  address_prefixes     = [local.ind-prod-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-ind-prod-tas-subnet" {
  provider             = azurerm.ind-prod-tas-sub
  count                = length(local.ind-prod-tas-subnet-name)
  name                 = local.ind-prod-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-prod-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-prod-tas.name
  address_prefixes     = [local.ind-prod-tas-subnet[count.index]]
}
resource "azurerm_subnet" "corp-ind-dev-tis-subnet" {
  provider             = azurerm.ind-dev-tis-sub
  count                = length(local.ind-dev-tis-subnet-name)
  name                 = local.ind-dev-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-dev-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-dev-tis.name
  address_prefixes     = [local.ind-dev-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-ind-dev-tas-subnet" {
  provider             = azurerm.ind-dev-tas-sub
  count                = length(local.ind-dev-tas-subnet-name)
  name                 = local.ind-dev-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-dev-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-dev-tas.name
  address_prefixes     = [local.ind-dev-tas-subnet[count.index]]
}
resource "azurerm_subnet" "corp-ind-uat-tis-subnet" {
  provider             = azurerm.ind-uat-tis-sub
  count                = length(local.ind-uat-tis-subnet-name)
  name                 = local.ind-uat-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-uat-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-uat-tis.name
  address_prefixes     = [local.ind-uat-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-ind-uat-tas-subnet" {
  provider             = azurerm.ind-uat-tas-sub
  count                = length(local.ind-uat-tas-subnet-name)
  name                 = local.ind-uat-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-ind-uat-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-ind-uat-tas.name
  address_prefixes     = [local.ind-uat-tas-subnet[count.index]]
}
//NEU
resource "azurerm_subnet" "corp-neu-prod-tis-subnet" {
  provider             = azurerm.neu-prod-tis-sub
  count                = length(local.neu-prod-tis-subnet-name)
  name                 = local.neu-prod-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-prod-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-prod-tis.name
  address_prefixes     = [local.neu-prod-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-neu-prod-tas-subnet" {
  provider             = azurerm.neu-prod-tas-sub
  count                = length(local.neu-prod-tas-subnet-name)
  name                 = local.neu-prod-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-prod-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-prod-tas.name
  address_prefixes     = [local.neu-prod-tas-subnet[count.index]]
}
resource "azurerm_subnet" "corp-neu-dev-tis-subnet" {
  provider             = azurerm.neu-dev-tis-sub
  count                = length(local.neu-dev-tis-subnet-name)
  name                 = local.neu-dev-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-dev-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-dev-tis.name
  address_prefixes     = [local.neu-dev-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-neu-dev-tas-subnet" {
  provider             = azurerm.neu-dev-tas-sub
  count                = length(local.neu-dev-tas-subnet-name)
  name                 = local.neu-dev-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-dev-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-dev-tas.name
  address_prefixes     = [local.neu-dev-tas-subnet[count.index]]
}
resource "azurerm_subnet" "corp-neu-uat-tis-subnet" {
  provider             = azurerm.neu-uat-tis-sub
  count                = length(local.neu-uat-tis-subnet-name)
  name                 = local.neu-uat-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-uat-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-uat-tis.name
  address_prefixes     = [local.neu-uat-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-neu-uat-tas-subnet" {
  provider             = azurerm.neu-uat-tas-sub
  count                = length(local.neu-uat-tas-subnet-name)
  name                 = local.neu-uat-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-neu-uat-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-neu-uat-tas.name
  address_prefixes     = [local.neu-uat-tas-subnet[count.index]]
}
//EUS
resource "azurerm_subnet" "corp-eus-prod-tis-subnet" {
  provider             = azurerm.eus-prod-tis-sub
  count                = length(local.eus-prod-tis-subnet-name)
  name                 = local.eus-prod-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-prod-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-prod-tis.name
  address_prefixes     = [local.eus-prod-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-eus-prod-tas-subnet" {
  provider             = azurerm.eus-prod-tas-sub
  count                = length(local.eus-prod-tas-subnet-name)
  name                 = local.eus-prod-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-prod-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-prod-tas.name
  address_prefixes     = [local.eus-prod-tas-subnet[count.index]]
}
resource "azurerm_subnet" "corp-eus-dev-tis-subnet" {
  provider             = azurerm.eus-dev-tis-sub
  count                = length(local.eus-dev-tis-subnet-name)
  name                 = local.eus-dev-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-dev-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-dev-tis.name
  address_prefixes     = [local.eus-dev-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-eus-dev-tas-subnet" {
  provider             = azurerm.eus-dev-tas-sub
  count                = length(local.eus-dev-tas-subnet-name)
  name                 = local.eus-dev-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-dev-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-dev-tas.name
  address_prefixes     = [local.eus-dev-tas-subnet[count.index]]
}
resource "azurerm_subnet" "corp-eus-uat-tis-subnet" {
  provider             = azurerm.eus-uat-tis-sub
  count                = length(local.eus-uat-tis-subnet-name)
  name                 = local.eus-uat-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-uat-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-uat-tis.name
  address_prefixes     = [local.eus-uat-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-eus-uat-tas-subnet" {
  provider             = azurerm.eus-uat-tas-sub
  count                = length(local.eus-uat-tas-subnet-name)
  name                 = local.eus-uat-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-eus-uat-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-eus-uat-tas.name
  address_prefixes     = [local.eus-uat-tas-subnet[count.index]]
}
//WUS
resource "azurerm_subnet" "corp-wus-prod-tis-subnet" {
  provider             = azurerm.wus-prod-tis-sub
  count                = length(local.wus-prod-tis-subnet-name)
  name                 = local.wus-prod-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-prod-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-prod-tis.name
  address_prefixes     = [local.wus-prod-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-wus-prod-tas-subnet" {
  provider             = azurerm.wus-prod-tas-sub
  count                = length(local.wus-prod-tas-subnet-name)
  name                 = local.wus-prod-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-prod-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-prod-tas.name
  address_prefixes     = [local.wus-prod-tas-subnet[count.index]]
}
resource "azurerm_subnet" "corp-wus-dev-tis-subnet" {
  provider             = azurerm.wus-dev-tis-sub
  count                = length(local.wus-dev-tis-subnet-name)
  name                 = local.wus-dev-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-dev-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-dev-tis.name
  address_prefixes     = [local.wus-dev-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-wus-dev-tas-subnet" {
  provider             = azurerm.wus-dev-tas-sub
  count                = length(local.wus-dev-tas-subnet-name)
  name                 = local.wus-dev-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-dev-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-dev-tas.name
  address_prefixes     = [local.wus-dev-tas-subnet[count.index]]
}
resource "azurerm_subnet" "corp-wus-uat-tis-subnet" {
  provider             = azurerm.wus-uat-tis-sub
  count                = length(local.wus-uat-tis-subnet-name)
  name                 = local.wus-uat-tis-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-uat-tis-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-uat-tis.name
  address_prefixes     = [local.wus-uat-tis-subnet[count.index]]
}
resource "azurerm_subnet" "corp-wus-uat-tas-subnet" {
  provider             = azurerm.wus-uat-tas-sub
  count                = length(local.wus-uat-tas-subnet-name)
  name                 = local.wus-uat-tas-subnet-name[count.index]
  resource_group_name  = azurerm_resource_group.corp-rg-wus-uat-tas-core-network.name
  virtual_network_name = azurerm_virtual_network.corp-wus-uat-tas.name
  address_prefixes     = [local.wus-uat-tas-subnet[count.index]]
}
