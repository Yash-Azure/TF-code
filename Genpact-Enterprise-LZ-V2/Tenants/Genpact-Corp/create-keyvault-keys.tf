

//PROD IND

data "azurerm_key_vault" "get-ind-prod-vault" {
  provider            = azurerm.ind-management-sub
  name                = "corpakvindprodencrypt010"
  resource_group_name = "corp-rg-ind-prod-shared-management-core-akv"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]
}

module "corp-ind-prod-shared-management-core-keys" {
  providers = {
    azurerm = azurerm.ind-management-sub
  }
  source       = "../../Modules/Create-Key-Vault-Keys"
  nb_instance  = 1
  server_name  = local.vm-keys-ind[0]
  key_vault_id = data.azurerm_key_vault.get-ind-prod-vault.id
  key_type     = "RSA"
  key_size     = "2048"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]
}
//PROD NEU

data "azurerm_key_vault" "get-neu-prod-vault" {
  provider            = azurerm.neu-management-sub
  name                = "corpakvneuprodencrypt010"
  resource_group_name = "corp-rg-neu-prod-shared-management-core-akv"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]
}
module "corp-neu-prod-shared-management-core-keys" {
  providers = {
    azurerm = azurerm.neu-management-sub

  }
  source       = "../../Modules/Create-Key-Vault-Keys"
  nb_instance  = 1
  server_name  = local.vm-keys-neu[0]
  key_vault_id = data.azurerm_key_vault.get-neu-prod-vault.id
  key_type     = "RSA"
  key_size     = "2048"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]
}

// PROD EUS
data "azurerm_key_vault" "get-eus-prod-vault" {
  provider            = azurerm.eus-management-sub
  name                = "corpakveusprodencrypt010"
  resource_group_name = "corp-rg-eus-prod-shared-management-core-akv"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]
}

module "corp-eus-prod-shared-management-core-keys" {
  providers = {
    azurerm = azurerm.eus-management-sub

  }
  source       = "../../Modules/Create-Key-Vault-Keys"
  nb_instance  = 1
  server_name  = local.vm-keys-eus[0]
  key_vault_id = data.azurerm_key_vault.get-eus-prod-vault.id
  key_type     = "RSA"
  key_size     = "2048"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]

}

// PROD WUS

data "azurerm_key_vault" "get-wus-prod-vault" {
  provider            = azurerm.wus-management-sub
  name                = "corpakvwusprodencrypt010"
  resource_group_name = "corp-rg-wus-prod-shared-management-core-akv"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]

}

module "corp-wus-prod-shared-management-core-keys" {

  providers = {
    azurerm = azurerm.wus-management-sub

  }
  source       = "../../Modules/Create-Key-Vault-Keys"
  nb_instance  = 1
  server_name  = local.vm-keys-wus[0]
  key_vault_id = data.azurerm_key_vault.get-wus-prod-vault.id
  key_type     = "RSA"
  key_size     = "2048"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]

}

//DEV Regions


//DEV IND

data "azurerm_key_vault" "get-ind-dev-vault" {
  provider            = azurerm.ind-management-sub
  name                = "corpakvinddevencrypt010"
  resource_group_name = "corp-rg-ind-dev-shared-management-core-akv"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]
}

module "corp-ind-dev-shared-management-core-keys" {

  providers = {
    azurerm = azurerm.ind-management-sub

  }
  source       = "../../Modules/Create-Key-Vault-Keys"
  nb_instance  = 1
  server_name  = local.vm-keys-ind[1]
  key_vault_id = data.azurerm_key_vault.get-ind-dev-vault.id
  key_type     = "RSA"
  key_size     = "2048"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]

}

//Dev NEU



data "azurerm_key_vault" "get-neu-dev-vault" {
  provider            = azurerm.neu-management-sub
  name                = "corpakvneudevencrypt010"
  resource_group_name = "corp-rg-neu-dev-shared-management-core-akv"

  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]
}
module "corp-neu-dev-shared-management-core-keys" {

  providers = {
    azurerm = azurerm.neu-management-sub

  }
  source       = "../../Modules/Create-Key-Vault-Keys"
  nb_instance  = 1
  server_name  = local.vm-keys-neu[1]
  key_vault_id = data.azurerm_key_vault.get-neu-dev-vault.id
  key_type     = "RSA"
  key_size     = "2048"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]

}

// Dev EUS

data "azurerm_key_vault" "get-eus-dev-vault" {
  provider            = azurerm.eus-management-sub
  name                = "corpakveusdevencrypt010"
  resource_group_name = "corp-rg-eus-dev-shared-management-core-akv"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]

}

module "corp-eus-dev-shared-management-core-keys" {

  providers = {
    azurerm = azurerm.eus-management-sub

  }
  source       = "../../Modules/Create-Key-Vault-Keys"
  nb_instance  = 1
  server_name  = local.vm-keys-eus[1]
  key_vault_id = data.azurerm_key_vault.get-eus-dev-vault.id
  key_type     = "RSA"
  key_size     = "2048"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]

}

// Dev WUS

data "azurerm_key_vault" "get-wus-dev-vault" {
  provider            = azurerm.wus-management-sub
  name                = "corpakvwusdevencrypt010"
  resource_group_name = "corp-rg-wus-dev-shared-management-core-akv"

  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]
}

module "corp-wus-dev-shared-management-core-keys" {

  providers = {
    azurerm = azurerm.wus-management-sub

  }
  source       = "../../Modules/Create-Key-Vault-Keys"
  nb_instance  = 1
  server_name  = local.vm-keys-wus[1]
  key_vault_id = data.azurerm_key_vault.get-wus-dev-vault.id
  key_type     = "RSA"
  key_size     = "2048"
  depends_on = [azurerm_key_vault.corp-akv-ind-prod-encrypt-01,
    azurerm_key_vault.corp-akv-ind-dev-encrypt-01,
    azurerm_key_vault.corp-akv-neu-prod-encrypt-01,
    azurerm_key_vault.corp-akv-neu-dev-encrypt-01,
    azurerm_key_vault.corp-akv-eus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-eus-dev-encrypt-01,
    azurerm_key_vault.corp-akv-wus-prod-encrypt-01,
    azurerm_key_vault.corp-akv-wus-dev-encrypt-01,
  ]
}
