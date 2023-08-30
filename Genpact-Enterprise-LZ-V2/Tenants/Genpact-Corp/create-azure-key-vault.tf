data "azurerm_client_config" "current" {

}



resource "azurerm_key_vault" "corp-akv-ind-prod-encrypt-01" {
  provider                    = azurerm.ind-management-sub
  name                        = "corpakvindprodencrypt010"
  location                    = var.location-ind
  resource_group_name         = azurerm_resource_group.ind-akv-rgs[0].name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false
  enabled_for_deployment      = true
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.managed_identity_principal_id //var.managed_identity_principal_id data.azuread_user.user.object_id
    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers"
    ]
  }

}

resource "azurerm_key_vault" "corp-akv-ind-dev-encrypt-01" {
  provider                    = azurerm.ind-management-sub
  name                        = "corpakvinddevencrypt010"
  location                    = var.location-ind
  resource_group_name         = azurerm_resource_group.ind-akv-rgs[1].name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false
  enabled_for_deployment      = true
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.managed_identity_principal_id
    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers"
    ]
  }

}
resource "azurerm_key_vault" "corp-akv-neu-prod-encrypt-01" {
  provider                    = azurerm.neu-management-sub
  name                        = "corpakvneuprodencrypt010"
  location                    = var.location-neu
  resource_group_name         = azurerm_resource_group.neu-akv-rgs[0].name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false
  enabled_for_deployment      = true
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.managed_identity_principal_id
    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers"
    ]
  }

}
resource "azurerm_key_vault" "corp-akv-neu-dev-encrypt-01" {
  provider                    = azurerm.neu-management-sub
  name                        = "corpakvneudevencrypt010"
  location                    = var.location-neu
  resource_group_name         = azurerm_resource_group.neu-akv-rgs[1].name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false
  enabled_for_deployment      = true
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.managed_identity_principal_id
    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers"
    ]
  }

}
resource "azurerm_key_vault" "corp-akv-eus-prod-encrypt-01" {
  provider                    = azurerm.eus-management-sub
  name                        = "corpakveusprodencrypt010"
  location                    = var.location-eus
  resource_group_name         = azurerm_resource_group.eus-akv-rgs[0].name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false
  enabled_for_deployment      = true
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.managed_identity_principal_id
    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers"
    ]
  }

}
resource "azurerm_key_vault" "corp-akv-eus-dev-encrypt-01" {
  provider                    = azurerm.eus-management-sub
  name                        = "corpakveusdevencrypt010"
  location                    = var.location-eus
  resource_group_name         = azurerm_resource_group.eus-akv-rgs[1].name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false
  enabled_for_deployment      = true
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.managed_identity_principal_id
    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers"
    ]
  }

}
resource "azurerm_key_vault" "corp-akv-wus-prod-encrypt-01" {
  provider                    = azurerm.wus-management-sub
  name                        = "corpakvwusprodencrypt010"
  location                    = var.location-wus
  resource_group_name         = azurerm_resource_group.wus-akv-rgs[0].name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false
  enabled_for_deployment      = true
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.managed_identity_principal_id
    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers"
    ]
  }

}
resource "azurerm_key_vault" "corp-akv-wus-dev-encrypt-01" {
  provider                    = azurerm.wus-management-sub
  name                        = "corpakvwusdevencrypt010"
  location                    = var.location-wus
  resource_group_name         = azurerm_resource_group.wus-akv-rgs[1].name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 30
  purge_protection_enabled    = false
  enabled_for_deployment      = true
  sku_name                    = "standard"
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = var.managed_identity_principal_id
    key_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge"
    ]
    secret_permissions = [
      "Get",
      "List",
      "Set",
      "Delete",
      "Recover",
      "Backup",
      "Restore"
    ]
    certificate_permissions = [
      "Get",
      "List",
      "Update",
      "Create",
      "Import",
      "Delete",
      "Recover",
      "Backup",
      "Restore",
      "Purge",
      "ManageContacts",
      "ManageIssuers",
      "GetIssuers",
      "ListIssuers",
      "SetIssuers",
      "DeleteIssuers"
    ]
  }

}


