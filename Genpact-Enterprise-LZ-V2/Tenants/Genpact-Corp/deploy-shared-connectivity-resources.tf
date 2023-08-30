


resource "azurerm_private_dns_zone" "example" {
  count               = length(local.dns_zones)
  name                = local.dns_zones[count.index]
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-shared-connectivity-core-network.name

}


