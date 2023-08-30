resource "azurerm_recovery_services_vault" "ind-vault" {
  provider                     = azurerm.ind-management-sub
  name                         = "corp-rsv-ind-prod-shared-01"
  location                     = var.location-ind
  resource_group_name          = azurerm_resource_group.ind-rsv-rgs[0].name
  sku                          = "Standard"
  storage_mode_type            = "GeoRedundant"
  soft_delete_enabled          = false
  cross_region_restore_enabled = true

}
resource "azurerm_recovery_services_vault" "ind-dev-vault" {
  provider                     = azurerm.ind-management-sub
  name                         = "corp-rsv-ind-dev-shared-01"
  location                     = var.location-ind
  resource_group_name          = azurerm_resource_group.ind-rsv-rgs[1].name
  sku                          = "Standard"
  storage_mode_type            = "GeoRedundant"
  soft_delete_enabled          = false
  cross_region_restore_enabled = true

}
resource "azurerm_recovery_services_vault" "neu-vault" {
  provider                     = azurerm.neu-management-sub
  name                         = "corp-rsv-neu-prod-shared-01"
  location                     = var.location-neu
  resource_group_name          = azurerm_resource_group.neu-rsv-rgs[0].name
  sku                          = "Standard"
  storage_mode_type            = "GeoRedundant"
  cross_region_restore_enabled = true
  soft_delete_enabled          = false

}
resource "azurerm_recovery_services_vault" "neu-dev-vault" {
  provider                     = azurerm.neu-management-sub
  name                         = "corp-rsv-neu-dev-shared-01"
  location                     = var.location-neu
  resource_group_name          = azurerm_resource_group.neu-rsv-rgs[1].name
  sku                          = "Standard"
  storage_mode_type            = "GeoRedundant"
  cross_region_restore_enabled = true
  soft_delete_enabled          = false

}
resource "azurerm_recovery_services_vault" "eus-vault" {
  provider                     = azurerm.eus-management-sub
  name                         = "corp-rsv-eus-prod-shared-01"
  location                     = var.location-eus
  resource_group_name          = azurerm_resource_group.eus-rsv-rgs[0].name
  sku                          = "Standard"
  storage_mode_type            = "GeoRedundant"
  cross_region_restore_enabled = true
  soft_delete_enabled          = false

}
resource "azurerm_recovery_services_vault" "eus-dev-vault" {
  provider                     = azurerm.eus-management-sub
  name                         = "corp-rsv-eus-dev-shared-01"
  location                     = var.location-eus
  resource_group_name          = azurerm_resource_group.eus-rsv-rgs[1].name
  sku                          = "Standard"
  storage_mode_type            = "GeoRedundant"
  cross_region_restore_enabled = true
  soft_delete_enabled          = false

}
resource "azurerm_recovery_services_vault" "wus-vault" {
  provider                     = azurerm.wus-management-sub
  name                         = "corp-rsv-wus-prod-shared-01"
  location                     = var.location-wus
  resource_group_name          = azurerm_resource_group.wus-rsv-rgs[0].name
  sku                          = "Standard"
  storage_mode_type            = "GeoRedundant"
  cross_region_restore_enabled = true
  soft_delete_enabled          = false

}
resource "azurerm_recovery_services_vault" "wus-dev-vault" {
  provider                     = azurerm.wus-management-sub
  name                         = "corp-rsv-wus-dev-shared-01"
  location                     = var.location-wus
  resource_group_name          = azurerm_resource_group.wus-rsv-rgs[1].name
  sku                          = "Standard"
  storage_mode_type            = "GeoRedundant"
  cross_region_restore_enabled = true
  soft_delete_enabled          = false

}
// IND Prod Backup Policy
resource "azurerm_backup_policy_vm" "corp-ind-prod-daily-policy" {
  name                = "corp-ind-daily-policy"
  resource_group_name = azurerm_resource_group.ind-rsv-rgs[0].name
  recovery_vault_name = azurerm_recovery_services_vault.ind-vault.name
  timezone            = "UTC"
  backup {
    frequency = "Daily"
    time      = "16:00"
  }
  instant_restore_retention_days = 5
  retention_daily {
    count = 7
  }
  retention_weekly {
    count    = 4
    weekdays = ["Saturday"]
  }
  retention_monthly {
    count    = 12
    weekdays = ["Sunday"]
    weeks    = ["First"]
  }
}
resource "azurerm_backup_policy_vm" "corp-ind-dev-daily-policy" {
  name                = "corp-ind-daily-policy"
  resource_group_name = azurerm_resource_group.ind-rsv-rgs[1].name
  recovery_vault_name = azurerm_recovery_services_vault.ind-dev-vault.name
  timezone            = "UTC"
  backup {
    frequency = "Daily"
    time      = "16:00"
  }
  instant_restore_retention_days = 5
  retention_daily {
    count = 7
  }
  retention_weekly {
    count    = 4
    weekdays = ["Saturday"]
  }
  retention_monthly {
    count    = 12
    weekdays = ["Sunday"]
    weeks    = ["First"]
  }
}
//NEU Backup Policy
resource "azurerm_backup_policy_vm" "corp-neu-prod-daily-policy" {
  name                = "corp-neu-daily-policy"
  resource_group_name = azurerm_resource_group.neu-rsv-rgs[0].name
  recovery_vault_name = azurerm_recovery_services_vault.neu-vault.name
  timezone            = "UTC"
  backup {
    frequency = "Daily"
    time      = "21:30"
  }
  instant_restore_retention_days = 5
  retention_daily {
    count = 7
  }
  retention_weekly {
    count    = 4
    weekdays = ["Saturday"]
  }
  retention_monthly {
    count    = 12
    weekdays = ["Sunday"]
    weeks    = ["First"]
  }
}
resource "azurerm_backup_policy_vm" "corp-neu-dev-daily-policy" {
  name                = "corp-neu-daily-policy"
  resource_group_name = azurerm_resource_group.neu-rsv-rgs[1].name
  recovery_vault_name = azurerm_recovery_services_vault.neu-dev-vault.name
  timezone            = "UTC"
  backup {
    frequency = "Daily"
    time      = "21:30"
  }
  instant_restore_retention_days = 5
  retention_daily {
    count = 7
  }
  retention_weekly {
    count    = 4
    weekdays = ["Saturday"]
  }
  retention_monthly {
    count    = 12
    weekdays = ["Sunday"]
    weeks    = ["First"]
  }
}
//EUS Policy
resource "azurerm_backup_policy_vm" "corp-eus-prod-daily-policy" {
  name                = "corp-eus-daily-policy"
  resource_group_name = azurerm_resource_group.eus-rsv-rgs[0].name
  recovery_vault_name = azurerm_recovery_services_vault.eus-vault.name
  timezone            = "UTC"
  backup {
    frequency = "Daily"
    time      = "01:30"
  }
  instant_restore_retention_days = 5
  retention_daily {
    count = 7
  }
  retention_weekly {
    count    = 4
    weekdays = ["Saturday"]
  }
  retention_monthly {
    count    = 12
    weekdays = ["Sunday"]
    weeks    = ["First"]
  }
}
resource "azurerm_backup_policy_vm" "corp-eus-dev-daily-policy" {
  name                = "corp-eus-daily-policy"
  resource_group_name = azurerm_resource_group.eus-rsv-rgs[1].name
  recovery_vault_name = azurerm_recovery_services_vault.eus-dev-vault.name
  timezone            = "UTC"
  backup {
    frequency = "Daily"
    time      = "01:30"
  }
  instant_restore_retention_days = 5
  retention_daily {
    count = 7
  }
  retention_weekly {
    count    = 4
    weekdays = ["Saturday"]
  }
  retention_monthly {
    count    = 12
    weekdays = ["Sunday"]
    weeks    = ["First"]
  }
}
//WUS Policy
resource "azurerm_backup_policy_vm" "corp-wus-prod-daily-policy" {
  name                = "corp-wus-daily-policy"
  resource_group_name = azurerm_resource_group.wus-rsv-rgs[0].name
  recovery_vault_name = azurerm_recovery_services_vault.wus-vault.name
  timezone            = "UTC"
  backup {
    frequency = "Daily"
    time      = "01:30"
  }
  instant_restore_retention_days = 5
  retention_daily {
    count = 7
  }
  retention_weekly {
    count    = 4
    weekdays = ["Saturday"]
  }
  retention_monthly {
    count    = 12
    weekdays = ["Sunday"]
    weeks    = ["First"]
  }
}
resource "azurerm_backup_policy_vm" "corp-wus-dev-daily-policy" {
  name                = "corp-wus-daily-policy"
  resource_group_name = azurerm_resource_group.wus-rsv-rgs[1].name
  recovery_vault_name = azurerm_recovery_services_vault.wus-dev-vault.name
  timezone            = "UTC"
  backup {
    frequency = "Daily"
    time      = "01:30"
  }
  instant_restore_retention_days = 5
  retention_daily {
    count = 7
  }
  retention_weekly {
    count    = 4
    weekdays = ["Saturday"]
  }
  retention_monthly {
    count    = 12
    weekdays = ["Sunday"]
    weeks    = ["First"]
  }
}