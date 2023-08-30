//Platrofrm Resource groups
resource "azurerm_resource_group" "corp-rg-ind-prod-shared-connectivity-core-network" {
  provider = azurerm.ind-connectivity-sub
  name     = "corp-rg-ind-prod-shared-connectivity-core-network"
  location = var.location-ind

  tags = merge(local.prod_shared_network_tags, local.location_ind_tag)
}
resource "azurerm_resource_group" "corp-rg-ind-shared-dev-identity-core-network" {
  provider = azurerm.ind-identity-sub
  name     = "corp-rg-ind-dev-shared-identity-core-network"
  location = var.location-ind

  tags = merge(local.dev_shared_network_tags, local.location_ind_tag)
}
resource "azurerm_resource_group" "corp-rg-ind-shared-prod-identity-core-network" {
  provider = azurerm.ind-identity-sub
  name     = "corp-rg-ind-prod-shared-identity-core-network"
  location = var.location-ind
  tags     = merge(local.prod_shared_network_tags, local.location_ind_tag)

}
resource "azurerm_resource_group" "corp-rg-ind-dev-shared-management-core-network" {
  provider = azurerm.ind-management-sub
  name     = "corp-rg-ind-dev-shared-management-core-network"
  location = var.location-ind
  tags     = merge(local.dev_shared_network_tags, local.location_ind_tag)
}
resource "azurerm_resource_group" "corp-rg-ind-prod-shared-management-core-network" {
  provider = azurerm.ind-management-sub
  name     = "corp-rg-ind-prod-shared-management-core-network"
  location = var.location-ind

  tags = merge(local.prod_shared_network_tags, local.location_ind_tag)
}
//Landing Zones
resource "azurerm_resource_group" "corp-rg-ind-prod-tis-core-network" {
  provider = azurerm.ind-prod-tis-sub
  name     = "corp-rg-ind-prod-tis-core-network"
  location = var.location-ind

  tags = merge(local.prod_tis_network_tags, local.location_ind_tag)
}
resource "azurerm_resource_group" "corp-rg-ind-prod-tas-core-network" {
  provider = azurerm.ind-prod-tas-sub
  name     = "corp-rg-ind-prod-tas-core-network"
  location = var.location-ind

  tags = merge(local.prod_tas_network_tags, local.location_ind_tag)
}
resource "azurerm_resource_group" "corp-rg-ind-dev-tis-core-network" {
  provider = azurerm.ind-dev-tis-sub
  name     = "corp-rg-ind-dev-tis-core-network"
  location = var.location-ind
  tags     = merge(local.dev_tis_network_tags, local.location_ind_tag)
}
resource "azurerm_resource_group" "corp-rg-ind-dev-tas-core-network" {
  provider = azurerm.ind-dev-tas-sub
  name     = "corp-rg-ind-dev-tas-core-network"
  location = var.location-ind
  tags     = merge(local.dev_tas_network_tags, local.location_ind_tag)


}
resource "azurerm_resource_group" "corp-rg-ind-uat-tas-core-network" {
  provider = azurerm.ind-uat-tas-sub
  name     = "corp-rg-ind-uat-tas-core-network"
  location = var.location-ind
  tags     = merge(local.uat_tas_network_tags, local.location_ind_tag)
}
resource "azurerm_resource_group" "corp-rg-ind-uat-tis-core-network" {
  provider = azurerm.ind-uat-tis-sub
  name     = "corp-rg-ind-uat-tis-core-network"
  location = var.location-ind

  tags = merge(local.uat_tis_network_tags, local.location_ind_tag)
}
//West US Region
//Platrofrm Resource groups
resource "azurerm_resource_group" "corp-rg-wus-shared-connectivity-core-network" {
  provider = azurerm.wus-connectivity-sub
  name     = "corp-rg-wus-prod-shared-connectivity-core-network"
  location = var.location-wus

  tags = merge(local.prod_shared_network_tags, local.location_wus_tag)
}
resource "azurerm_resource_group" "corp-rg-wus-dev-shared-management-core-network" {
  provider = azurerm.wus-management-sub
  name     = "corp-rg-wus-dev-shared-management-core-network"
  location = var.location-wus
  tags     = merge(local.dev_shared_network_tags, local.location_wus_tag)
}
resource "azurerm_resource_group" "corp-rg-wus-prod-shared-management-core-network" {
  provider = azurerm.wus-management-sub
  name     = "corp-rg-wus-prod-shared-management-core-network"
  location = var.location-wus
  tags     = merge(local.prod_shared_network_tags, local.location_wus_tag)
}
resource "azurerm_resource_group" "corp-rg-wus-shared-dev-identity-core-network" {
  provider = azurerm.wus-identity-sub
  name     = "corp-rg-wus-dev-shared-identity-core-network"
  location = var.location-wus
  tags     = merge(local.dev_shared_network_tags, local.location_wus_tag)
}
resource "azurerm_resource_group" "corp-rg-wus-shared-prod-identity-core-network" {
  provider = azurerm.wus-identity-sub
  name     = "corp-rg-wus-prod-shared-identity-core-network"
  location = var.location-wus
  tags     = merge(local.prod_shared_network_tags, local.location_wus_tag)
}
//Landing Zones
resource "azurerm_resource_group" "corp-rg-wus-prod-tis-core-network" {
  provider = azurerm.wus-prod-tis-sub
  name     = "corp-rg-wus-prod-tis-core-network"
  location = var.location-wus
  tags     = merge(local.prod_tis_network_tags, local.location_wus_tag)
}
resource "azurerm_resource_group" "corp-rg-wus-prod-tas-core-network" {
  provider = azurerm.wus-prod-tas-sub
  name     = "corp-rg-wus-prod-tas-core-network"
  location = var.location-wus
  tags     = merge(local.prod_tas_network_tags, local.location_wus_tag)
}
resource "azurerm_resource_group" "corp-rg-wus-dev-tis-core-network" {
  provider = azurerm.wus-dev-tis-sub
  name     = "corp-rg-wus-dev-tis-core-network"
  location = var.location-wus
  tags     = merge(local.dev_tis_network_tags, local.location_wus_tag)
}
resource "azurerm_resource_group" "corp-rg-wus-dev-tas-core-network" {
  provider = azurerm.wus-dev-tas-sub
  name     = "corp-rg-wus-dev-tas-core-network"
  location = var.location-wus
  tags     = merge(local.dev_tas_network_tags, local.location_wus_tag)
}
resource "azurerm_resource_group" "corp-rg-wus-uat-tis-core-network" {
  provider = azurerm.wus-uat-tis-sub
  name     = "corp-rg-wus-uat-tis-core-network"
  location = var.location-wus
  tags     = merge(local.uat_tis_network_tags, local.location_wus_tag)
}
resource "azurerm_resource_group" "corp-rg-wus-uat-tas-core-network" {
  provider = azurerm.wus-uat-tas-sub
  name     = "corp-rg-wus-uat-tas-core-network"
  location = var.location-wus
  tags     = merge(local.uat_tas_network_tags, local.location_wus_tag)
}
// East US Region
resource "azurerm_resource_group" "corp-rg-eus-shared-connectivity-core-network" {
  provider = azurerm.eus-connectivity-sub
  name     = "corp-rg-eus-shared-connectivity-core-network"
  location = var.location-eus
  tags     = merge(local.prod_shared_network_tags, local.location_eus_tag)
}

resource "azurerm_resource_group" "corp-rg-eus-dev-shared-management-core-network" {
  provider = azurerm.eus-management-sub
  name     = "corp-rg-eus-dev-shared-management-core-network"
  location = var.location-eus
  tags     = merge(local.dev_shared_network_tags, local.location_eus_tag)
}
resource "azurerm_resource_group" "corp-rg-eus-prod-shared-management-core-network" {
  provider = azurerm.eus-management-sub
  name     = "corp-rg-eus-prod-shared-management-core-network"
  location = var.location-eus
  tags     = merge(local.prod_shared_network_tags, local.location_eus_tag)
}
resource "azurerm_resource_group" "corp-rg-eus-shared-dev-identity-core-network" {
  provider = azurerm.eus-identity-sub
  name     = "corp-rg-eus-dev-shared-identity-core-network"
  location = var.location-eus
  tags     = merge(local.dev_shared_network_tags, local.location_eus_tag)
}
resource "azurerm_resource_group" "corp-rg-eus-shared-prod-identity-core-network" {
  provider = azurerm.eus-identity-sub
  name     = "corp-rg-eus-prod-shared-identity-core-network"
  location = var.location-eus
  tags     = merge(local.prod_shared_network_tags, local.location_eus_tag)
}


//Landing Zones
resource "azurerm_resource_group" "corp-rg-eus-prod-tis-core-network" {
  provider = azurerm.eus-prod-tis-sub
  name     = "corp-rg-eus-prod-tis-core-network"
  location = var.location-eus

  tags = merge(local.prod_tis_network_tags, local.location_eus_tag)
}
resource "azurerm_resource_group" "corp-rg-eus-prod-tas-core-network" {
  provider = azurerm.eus-prod-tas-sub
  name     = "corp-rg-eus-prod-tas-core-network"
  location = var.location-eus
  tags     = merge(local.prod_tas_network_tags, local.location_eus_tag)
}
resource "azurerm_resource_group" "corp-rg-eus-dev-tis-core-network" {
  provider = azurerm.eus-dev-tis-sub
  name     = "corp-rg-eus-dev-tis-core-network"
  location = var.location-eus
  tags     = merge(local.dev_tis_network_tags, local.location_eus_tag)
}
resource "azurerm_resource_group" "corp-rg-eus-dev-tas-core-network" {
  provider = azurerm.eus-dev-tas-sub
  name     = "corp-rg-eus-dev-tas-core-network"
  location = var.location-eus
  tags     = merge(local.dev_tas_network_tags, local.location_eus_tag)
}
resource "azurerm_resource_group" "corp-rg-eus-uat-tis-core-network" {
  provider = azurerm.eus-uat-tis-sub
  name     = "corp-rg-eus-uat-tis-core-network"
  location = var.location-eus
  tags     = merge(local.uat_tis_network_tags, local.location_eus_tag)
}
resource "azurerm_resource_group" "corp-rg-eus-uat-tas-core-network" {
  provider = azurerm.eus-uat-tas-sub
  name     = "corp-rg-eus-uat-tas-core-network"
  location = var.location-eus
  tags     = merge(local.uat_tas_network_tags, local.location_eus_tag)
}
//neu Region
resource "azurerm_resource_group" "corp-rg-neu-shared-connectivity-core-network" {
  provider = azurerm.neu-connectivity-sub
  name     = "corp-rg-neu-prod-shared-connectivity-core-network"
  location = var.location-neu
  tags     = merge(local.prod_shared_network_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "corp-rg-neu-dev-shared-management-core-network" {
  provider = azurerm.neu-management-sub
  name     = "corp-rg-neu-dev-shared-management-core-network"
  location = var.location-neu
  tags     = merge(local.dev_shared_network_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "corp-rg-neu-prod-shared-management-core-network" {
  provider = azurerm.neu-management-sub
  name     = "corp-rg-neu-prod-shared-management-core-network"
  location = var.location-neu
  tags     = merge(local.prod_shared_network_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "corp-rg-neu-shared-dev-identity-core-network" {
  provider = azurerm.neu-identity-sub
  name     = "corp-rg-neu-dev-shared-identity-core-network"
  location = var.location-neu
  tags     = merge(local.dev_shared_network_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "corp-rg-neu-shared-prod-identity-core-network" {
  provider = azurerm.neu-identity-sub
  name     = "corp-rg-neu-prod-shared-identity-core-network"
  location = var.location-neu
  tags     = merge(local.prod_shared_network_tags, local.location_neu_tag)
}
//Landing Zones
resource "azurerm_resource_group" "corp-rg-neu-prod-tis-core-network" {
  provider = azurerm.neu-prod-tis-sub
  name     = "corp-rg-neu-prod-tis-core-network"
  location = var.location-neu
  tags     = merge(local.prod_tis_network_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "corp-rg-neu-prod-tas-core-network" {
  provider = azurerm.neu-prod-tas-sub
  name     = "corp-rg-neu-prod-tas-core-network"
  location = var.location-neu
  tags     = merge(local.prod_tas_network_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "corp-rg-neu-dev-tis-core-network" {
  provider = azurerm.neu-dev-tis-sub
  name     = "corp-rg-neu-dev-tis-core-network"
  location = var.location-neu
  tags     = merge(local.dev_tis_network_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "corp-rg-neu-dev-tas-core-network" {
  provider = azurerm.neu-dev-tas-sub
  name     = "corp-rg-neu-dev-tas-core-network"
  location = var.location-neu
  tags     = merge(local.dev_tas_network_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "corp-rg-neu-uat-tis-core-network" {
  provider = azurerm.neu-uat-tis-sub
  name     = "corp-rg-neu-uat-tis-core-network"
  location = var.location-neu
  tags     = merge(local.uat_tis_network_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "corp-rg-neu-uat-tas-core-network" {
  provider = azurerm.neu-uat-tas-sub
  name     = "corp-rg-neu-uat-tas-core-network"
  location = var.location-neu
  tags     = merge(local.uat_tas_network_tags, local.location_neu_tag)
}




//Deployment of resource groups for Identity and Management environments
resource "azurerm_resource_group" "ind-identity-rgs" {
  provider = azurerm.ind-identity-sub
  count    = length(local.ind-identity-rgs)
  name     = local.ind-identity-rgs[count.index]
  location = var.location-ind
  tags     = merge(local.ind_dctags[local.ind-identity-rgs[count.index]], local.location_ind_tag)


}


resource "azurerm_resource_group" "neu-identity-rgs" {
  provider = azurerm.neu-identity-sub
  count    = length(local.neu-identity-rgs)
  name     = local.neu-identity-rgs[count.index]
  location = var.location-neu
  tags     = merge(local.neu_dctags[local.neu-identity-rgs[count.index]], local.location_neu_tag)


}
resource "azurerm_resource_group" "wus-identity-rgs" {
  provider = azurerm.wus-identity-sub
  count    = length(local.wus-identity-rgs)
  name     = local.wus-identity-rgs[count.index]
  location = var.location-wus
  tags     = merge(local.wus_dctags[local.wus-identity-rgs[count.index]], local.location_wus_tag)



}
resource "azurerm_resource_group" "eus-identity-rgs" {
  provider = azurerm.eus-identity-sub
  count    = length(local.eus-identity-rgs)
  name     = local.eus-identity-rgs[count.index]
  location = var.location-eus
  tags     = merge(local.eus_dctags[local.eus-identity-rgs[count.index]], local.location_eus_tag)

}
// Resource Groups for Logic Monitor Servers
resource "azurerm_resource_group" "ind-lmc-rgs" {
  provider = azurerm.ind-management-sub
  count    = length(local.ind-lmc-rgs)
  name     = local.ind-lmc-rgs[count.index]
  location = var.location-ind
  tags     = merge(local.ind_lmc_tags[local.ind-lmc-rgs[count.index]], local.location_ind_tag)
}
resource "azurerm_resource_group" "neu-lmc-rgs" {
  provider = azurerm.neu-management-sub
  count    = length(local.neu-lmc-rgs)
  name     = local.neu-lmc-rgs[count.index]
  location = var.location-neu
  tags     = merge(local.neu_lmc_tags[local.neu-lmc-rgs[count.index]], local.location_neu_tag)
}
resource "azurerm_resource_group" "eus-lmc-rgs" {
  provider = azurerm.eus-management-sub
  count    = length(local.eus-lmc-rgs)
  name     = local.eus-lmc-rgs[count.index]
  location = var.location-eus
  tags     = merge(local.eus_lmc_tags[local.eus-lmc-rgs[count.index]], local.location_eus_tag)
}
resource "azurerm_resource_group" "wus-lmc-rgs" {
  provider = azurerm.wus-management-sub
  count    = length(local.wus-lmc-rgs)
  name     = local.wus-lmc-rgs[count.index]
  location = var.location-wus
  tags     = merge(local.wus_lmc_tags[local.wus-lmc-rgs[count.index]], local.location_wus_tag)
}
//Resource Groups for Jump servers
resource "azurerm_resource_group" "ind-jmp-rgs" {
  provider = azurerm.ind-management-sub
  count    = length(local.ind-jmp-rgs)
  name     = local.ind-jmp-rgs[count.index]
  location = var.location-ind
  tags     = merge(local.ind_jmp_server_tags[local.ind-jmp-rgs[count.index]], local.location_ind_tag)
}
resource "azurerm_resource_group" "eus-jmp-rgs" {
  provider = azurerm.eus-management-sub
  count    = length(local.eus-jmp-rgs)
  name     = local.eus-jmp-rgs[count.index]
  location = var.location-eus
  tags     = merge(local.eus_jmp_server_tags[local.eus-jmp-rgs[count.index]], local.location_eus_tag)
}
resource "azurerm_resource_group" "wus-jmp-rgs" {
  provider = azurerm.wus-management-sub
  count    = length(local.wus-jmp-rgs)
  name     = local.wus-jmp-rgs[count.index]
  location = var.location-wus
  tags     = merge(local.wus_jmp_server_tags[local.wus-jmp-rgs[count.index]], local.location_wus_tag)
}
resource "azurerm_resource_group" "neu-jmp-rgs" {
  provider = azurerm.neu-management-sub
  count    = length(local.neu-jmp-rgs)
  name     = local.neu-jmp-rgs[count.index]
  location = var.location-neu
  tags     = merge(local.neu_jmp_server_tags[local.neu-jmp-rgs[count.index]], local.location_neu_tag)
}
//Resource Groups for ZPA servers
resource "azurerm_resource_group" "ind-zpa-rgs" {
  provider = azurerm.ind-management-sub
  count    = length(local.ind-zpa-rgs)
  name     = local.ind-zpa-rgs[count.index]
  location = var.location-ind
  tags     = merge(local.ind_zpa_tags[local.ind-zpa-rgs[count.index]], local.location_ind_tag)

}
resource "azurerm_resource_group" "eus-zpa-rgs" {
  provider = azurerm.eus-management-sub
  count    = length(local.eus-zpa-rgs)
  name     = local.eus-zpa-rgs[count.index]
  location = var.location-eus
  tags     = merge(local.eus_zpa_tags[local.eus-zpa-rgs[count.index]], local.location_eus_tag)
}
resource "azurerm_resource_group" "wus-zpa-rgs" {
  provider = azurerm.wus-management-sub
  count    = length(local.wus-zpa-rgs)
  name     = local.wus-zpa-rgs[count.index]
  location = var.location-wus
  tags     = merge(local.wus_zpa_tags[local.wus-zpa-rgs[count.index]], local.location_wus_tag)
}
resource "azurerm_resource_group" "neu-zpa-rgs" {
  provider = azurerm.neu-management-sub
  count    = length(local.neu-zpa-rgs)
  name     = local.neu-zpa-rgs[count.index]
  location = var.location-neu
  tags     = merge(local.neu_zpa_tags[local.neu-zpa-rgs[count.index]], local.location_neu_tag)
}
//Azure KeyVault Resource Groups
resource "azurerm_resource_group" "ind-akv-rgs" {
  provider = azurerm.ind-management-sub
  count    = length(local.ind-akv-rgs)
  name     = local.ind-akv-rgs[count.index]
  location = var.location-ind
}
resource "azurerm_resource_group" "eus-akv-rgs" {
  provider = azurerm.eus-management-sub
  count    = length(local.eus-akv-rgs)
  name     = local.eus-akv-rgs[count.index]
  location = var.location-eus
}
resource "azurerm_resource_group" "wus-akv-rgs" {
  provider = azurerm.wus-management-sub
  count    = length(local.wus-akv-rgs)
  name     = local.wus-akv-rgs[count.index]
  location = var.location-wus
}
resource "azurerm_resource_group" "neu-akv-rgs" {
  provider = azurerm.neu-management-sub
  count    = length(local.neu-akv-rgs)
  name     = local.neu-akv-rgs[count.index]
  location = var.location-neu
}


//Recovery Services Vault
resource "azurerm_resource_group" "ind-rsv-rgs" {
  provider = azurerm.ind-management-sub
  count    = length(local.ind-rsv-rgs)
  name     = local.ind-rsv-rgs[count.index]
  location = var.location-ind
  tags     = merge(local.ind_bootdiag_tags[local.ind-bootdiag-rgs[count.index]], local.location_ind_tag)
}
resource "azurerm_resource_group" "neu-rsv-rgs" {
  provider = azurerm.neu-management-sub
  count    = length(local.neu-rsv-rgs)
  name     = local.neu-rsv-rgs[count.index]
  location = var.location-neu
  tags     = merge(local.neu_bootdiag_tags[local.neu-bootdiag-rgs[count.index]], local.location_neu_tag)
}
resource "azurerm_resource_group" "wus-rsv-rgs" {
  provider = azurerm.wus-management-sub
  count    = length(local.wus-rsv-rgs)
  name     = local.wus-rsv-rgs[count.index]
  location = var.location-wus
  tags     = merge(local.wus_bootdiag_tags[local.wus-bootdiag-rgs[count.index]], local.location_wus_tag)
}
resource "azurerm_resource_group" "eus-rsv-rgs" {
  provider = azurerm.eus-management-sub
  count    = length(local.eus-rsv-rgs)
  name     = local.eus-rsv-rgs[count.index]
  location = var.location-eus
  tags     = merge(local.eus_bootdiag_tags[local.eus-bootdiag-rgs[count.index]], local.location_eus_tag)
}
//Boot Diagnostics Resource Groups
resource "azurerm_resource_group" "ind-bootdiagnostics-rgs" {
  provider = azurerm.ind-management-sub
  count    = length(local.ind-bootdiag-rgs)
  name     = local.ind-bootdiag-rgs[count.index]
  location = var.location-ind
  tags     = merge(local.ind_bootdiag_tags[local.ind-bootdiag-rgs[count.index]], local.location_ind_tag)
}
resource "azurerm_resource_group" "neu-bootdiagnostics-rgs" {
  provider = azurerm.neu-management-sub
  count    = length(local.neu-bootdiag-rgs)
  name     = local.neu-bootdiag-rgs[count.index]
  location = var.location-neu
  tags     = merge(local.neu_bootdiag_tags[local.neu-bootdiag-rgs[count.index]], local.location_neu_tag)
}
resource "azurerm_resource_group" "eus-bootdiagnostics-rgs" {
  provider = azurerm.eus-management-sub
  count    = length(local.eus-bootdiag-rgs)
  name     = local.eus-bootdiag-rgs[count.index]
  location = var.location-eus
  tags     = merge(local.eus_bootdiag_tags[local.eus-bootdiag-rgs[count.index]], local.location_eus_tag)
}
resource "azurerm_resource_group" "wus-bootdiagnostics-rgs" {
  provider = azurerm.wus-management-sub
  count    = length(local.wus-bootdiag-rgs)
  name     = local.wus-bootdiag-rgs[count.index]
  location = var.location-wus
  tags     = merge(local.wus_bootdiag_tags[local.wus-bootdiag-rgs[count.index]], local.location_wus_tag)
}
//Log Analytics Resource Groups
resource "azurerm_resource_group" "ind-la-workspace-rg" {
  provider = azurerm.ind-management-sub
  name     = local.all-regions-laworkspace-rg[0]
  location = var.location-ind
  tags     = merge(local.prod_log_tags, local.location_ind_tag)
}
resource "azurerm_resource_group" "neu-la-workspace-rg" {
  provider = azurerm.neu-management-sub
  name     = local.all-regions-laworkspace-rg[1]
  location = var.location-neu
  tags     = merge(local.prod_log_tags, local.location_neu_tag)
}
resource "azurerm_resource_group" "eus-la-workspace-rg" {
  provider = azurerm.eus-management-sub
  name     = local.all-regions-laworkspace-rg[2]
  location = var.location-eus
  tags     = merge(local.prod_log_tags, local.location_eus_tag)
}
resource "azurerm_resource_group" "wus-la-workspace-rg" {
  provider = azurerm.wus-management-sub
  name     = local.all-regions-laworkspace-rg[3]
  location = var.location-wus
  tags     = merge(local.prod_log_tags, local.location_wus_tag)
}
