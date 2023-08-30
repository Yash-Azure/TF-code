
//Create Azure VWAN
resource "azurerm_virtual_wan" "corp-azVWAN" {
  provider            = azurerm.ind-connectivity-sub
  name                = "corp-vwan-ind-shared"
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-shared-connectivity-core-network.name
  location            = var.location-ind

  depends_on = [azurerm_virtual_network.corp-ind-shared-connectivity, azurerm_virtual_network.corp-ind-prod-shared-management,
    azurerm_virtual_network.corp-ind-dev-shared-management, azurerm_virtual_network.corp-ind-prod-shared-identity, azurerm_virtual_network.corp-ind-dev-shared-identity,
    azurerm_virtual_network.corp-neu-shared-connectivity, azurerm_virtual_network.corp-neu-prod-shared-management, azurerm_virtual_network.corp-neu-prod-shared-identity,
    azurerm_virtual_network.corp-eus-shared-connectivity, azurerm_virtual_network.corp-eus-prod-shared-management, azurerm_virtual_network.corp-eus-prod-shared-identity,
    azurerm_virtual_network.corp-wus-shared-connectivity, azurerm_virtual_network.corp-wus-prod-shared-management, azurerm_virtual_network.corp-wus-prod-shared-identity
  ]

}


//Provision regional VWAN Hubs
resource "azurerm_virtual_hub" "corp-ind-prod-hub" {
  provider            = azurerm.ind-connectivity-sub
  name                = "corp-vhub-ind-shared"
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-shared-connectivity-core-network.name
  location            = var.location-ind
  virtual_wan_id      = azurerm_virtual_wan.corp-azVWAN.id
  address_prefix      = "10.248.89.0/24"
}
resource "azurerm_virtual_hub" "corp-eus-prod-hub" {
  provider            = azurerm.eus-connectivity-sub
  name                = "corp-vhub-eus-shared"
  resource_group_name = azurerm_resource_group.corp-rg-eus-shared-connectivity-core-network.name
  location            = var.location-eus
  virtual_wan_id      = azurerm_virtual_wan.corp-azVWAN.id
  address_prefix      = "10.249.89.0/24"
}
resource "azurerm_virtual_hub" "corp-wus-prod-hub" {
  provider            = azurerm.wus-connectivity-sub
  name                = "corp-vhub-wus-shared"
  resource_group_name = azurerm_resource_group.corp-rg-wus-shared-connectivity-core-network.name
  location            = var.location-wus
  virtual_wan_id      = azurerm_virtual_wan.corp-azVWAN.id
  address_prefix      = "10.250.89.0/24"
}
resource "azurerm_virtual_hub" "corp-neu-prod-hub" {
  provider            = azurerm.neu-connectivity-sub
  name                = "corp-vhub-neu-shared"
  resource_group_name = azurerm_resource_group.corp-rg-neu-shared-connectivity-core-network.name
  location            = var.location-neu
  virtual_wan_id      = azurerm_virtual_wan.corp-azVWAN.id
  address_prefix      = "10.251.89.0/24"
}


//VHUB Connections - IND HUB

//IND
resource "azurerm_virtual_hub_connection" "vhub-ind-prod-shared-management" {
  name                      = "corp-ind-prod-shared-management-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-prod-shared-management.id
}
resource "azurerm_virtual_hub_connection" "vhub-ind-dev-shared-management" {
  name                      = "corp-ind-dev-shared-management-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-dev-shared-management.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-ind-prod-shared-identity" {
  name                      = "corp-ind-prod-shared-identity-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-prod-shared-identity.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-ind-dev-shared-identity" {
  name                      = "corp-ind-dev-shared-identity-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-dev-shared-identity.id
}
//Landing Zones
resource "azurerm_virtual_hub_connection" "vhub-corp-ind-prod-tas" {
  name                      = "corp-ind-prod-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-prod-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-ind-prod-tis" {
  name                      = "corp-ind-prod-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-prod-tas.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-ind-dev-tis" {
  name                      = "corp-ind-dev-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-dev-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-ind-dev-tas" {
  name                      = "corp-ind-dev-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-dev-tas.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-ind-uat-tis" {
  name                      = "corp-ind-uat-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-uat-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-ind-uat-tas" {
  name                      = "corp-ind-uat-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-ind-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-ind-uat-tas.id
}


////VHUB Connections - NEU HUB


resource "azurerm_virtual_hub_connection" "vhub-neu-prod-shared-management" {
  name                      = "corp-neu-prod-shared-management-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-prod-shared-management.id
}
resource "azurerm_virtual_hub_connection" "vhub-neu-dev-shared-management" {
  name                      = "corp-neu-dev-shared-management-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-dev-shared-management.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-neu-prod-shared-identity" {
  name                      = "corp-neu-prod-shared-identity-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-prod-shared-identity.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-neu-dev-shared-identity" {
  name                      = "corp-neu-dev-shared-identity-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-dev-shared-identity.id
}
//Landing Zones
resource "azurerm_virtual_hub_connection" "vhub-corp-neu-prod-tas" {
  name                      = "corp-neu-prod-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-prod-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-neu-prod-tis" {
  name                      = "corp-neu-prod-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-prod-tas.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-neu-dev-tis" {
  name                      = "corp-neu-dev-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-dev-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-neu-dev-tas" {
  name                      = "corp-neu-dev-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-dev-tas.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-neu-uat-tis" {
  name                      = "corp-neu-uat-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-uat-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-neu-uat-tas" {
  name                      = "corp-neu-uat-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-neu-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-neu-uat-tas.id
}

//VHUB Connections - EUS HUB
resource "azurerm_virtual_hub_connection" "vhub-eus-prod-shared-management" {
  name                      = "corp-eus-prod-shared-management-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-prod-shared-management.id
}
resource "azurerm_virtual_hub_connection" "vhub-eus-dev-shared-management" {
  name                      = "corp-eus-dev-shared-management-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-dev-shared-management.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-eus-prod-shared-identity" {
  name                      = "corp-eus-prod-shared-identity-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-prod-shared-identity.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-eus-dev-shared-identity" {
  name                      = "corp-eus-dev-shared-identity-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-dev-shared-identity.id
}
//Landing Zones
resource "azurerm_virtual_hub_connection" "vhub-corp-eus-prod-tas" {
  name                      = "corp-eus-prod-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-prod-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-eus-prod-tis" {
  name                      = "corp-eus-prod-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-prod-tas.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-eus-dev-tis" {
  name                      = "corp-eus-dev-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-dev-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-eus-dev-tas" {
  name                      = "corp-eus-dev-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-dev-tas.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-eus-uat-tis" {
  name                      = "corp-eus-uat-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-uat-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-eus-uat-tas" {
  name                      = "corp-eus-uat-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-eus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-eus-uat-tas.id
}


//VHUB Connections - WUS HUB
resource "azurerm_virtual_hub_connection" "vhub-wus-prod-shared-management" {
  name                      = "corp-wus-prod-shared-management-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-prod-shared-management.id
}
resource "azurerm_virtual_hub_connection" "vhub-wus-dev-shared-management" {
  name                      = "corp-wus-dev-shared-management-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-dev-shared-management.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-wus-prod-shared-identity" {
  name                      = "corp-wus-prod-shared-identity-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-prod-shared-identity.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-wus-dev-shared-identity" {
  name                      = "corp-wus-dev-shared-identity-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-dev-shared-identity.id
}
//Landing Zones
resource "azurerm_virtual_hub_connection" "vhub-corp-wus-prod-tas" {
  name                      = "corp-wus-prod-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-prod-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-wus-prod-tis" {
  name                      = "corp-wus-prod-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-prod-tas.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-wus-dev-tis" {
  name                      = "corp-wus-dev-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-dev-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-wus-dev-tas" {
  name                      = "corp-wus-dev-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-dev-tas.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-wus-uat-tis" {
  name                      = "corp-wus-uat-tis-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-uat-tis.id
}
resource "azurerm_virtual_hub_connection" "vhub-corp-wus-uat-tas" {
  name                      = "corp-wus-uat-tas-connection"
  virtual_hub_id            = azurerm_virtual_hub.corp-wus-prod-hub.id
  remote_virtual_network_id = azurerm_virtual_network.corp-wus-uat-tas.id
}

