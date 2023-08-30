//ind Prod DC and Okta
module "corp-rg-ind-prod-shared-identity-dc-servers" {
  providers = {
    azurerm = azurerm.ind-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.ind-identity-rgs[0].name
  vm_hostname                      = "GCPWCINAZADC"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-ind-prod-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorindpcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.ind-identity-rgs]
}
module "corp-rg-ind-prod-shared-identity-okta-servers" {
  providers = {
    azurerm = azurerm.ind-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.ind-identity-rgs[1].name
  vm_hostname                      = "GCPWCINAZOKT"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-ind-prod-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorindpcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.ind-identity-rgs]
}
//ind DEV DCs and Okta
//ind dev DC and Okta
module "corp-rg-ind-dev-shared-identity-dc-servers" {
  providers = {
    azurerm = azurerm.ind-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.ind-identity-rgs[2].name
  vm_hostname                      = "GCDWCINAZADC"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-ind-dev-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstorinddcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.ind-identity-rgs]
}
module "corp-rg-ind-dev-shared-identity-okta-servers" {
  providers = {
    azurerm = azurerm.ind-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.ind-identity-rgs[3].name
  vm_hostname                      = "GCDWCINAZOKT"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-ind-dev-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstorinddcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.ind-identity-rgs]
}
//NEU Region
module "corp-rg-neu-prod-shared-identity-dc-servers" {
  providers = {
    azurerm = azurerm.neu-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-identity-rgs[0].name
  vm_hostname                      = "GCPWCNEUAZADC"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-neu-prod-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorneupcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.neu-identity-rgs]
}
module "corp-rg-neu-prod-shared-identity-okta-servers" {
  providers = {
    azurerm = azurerm.neu-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-identity-rgs[1].name
  vm_hostname                      = "GCPWNEUAZOKT"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-neu-prod-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorneupcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.neu-identity-rgs]
}
//neu DEV DCs and Okta
//neu dev DC and Okta
module "corp-rg-neu-dev-shared-identity-dc-servers" {
  providers = {
    azurerm = azurerm.neu-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-identity-rgs[2].name
  vm_hostname                      = "GCDWNEUAZADC"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-neu-dev-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstorneudcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.neu-identity-rgs]
}
module "corp-rg-neu-dev-shared-identity-okta-servers" {
  providers = {
    azurerm = azurerm.neu-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-identity-rgs[3].name
  vm_hostname                      = "GCDWNEUAZOKT"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-neu-dev-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstorneudcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.neu-identity-rgs]
}
//EUS Region
module "corp-rg-eus-prod-shared-identity-dc-servers" {
  providers = {
    azurerm = azurerm.eus-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-identity-rgs[0].name
  vm_hostname                      = "GCPWEUSAZADC"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-prod-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstoreuspcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.eus-identity-rgs]
}
module "corp-rg-eus-prod-shared-identity-okta-servers" {
  providers = {
    azurerm = azurerm.eus-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-identity-rgs[1].name
  vm_hostname                      = "GCPWEUSAZOKT"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-prod-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstoreuspcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.eus-identity-rgs]
}
//eus DEV DCs and Okta
//eus dev DC and Okta
module "corp-rg-eus-dev-shared-identity-dc-servers" {
  providers = {
    azurerm = azurerm.eus-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-identity-rgs[2].name
  vm_hostname                      = "GCDWEUSAZADC"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-dev-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstoreusdcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.eus-identity-rgs]
}
module "corp-rg-eus-dev-shared-identity-okta-servers" {
  providers = {
    azurerm = azurerm.eus-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-identity-rgs[3].name
  vm_hostname                      = "GCDWEUSAZOKT"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-dev-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstoreusdcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.eus-identity-rgs]
}
//WUS Region
module "corp-rg-wus-prod-shared-identity-dc-servers" {
  providers = {
    azurerm = azurerm.wus-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-identity-rgs[0].name
  vm_hostname                      = "GCPWWUSAZADC"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-prod-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorwuspcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.wus-identity-rgs]
}
module "corp-rg-wus-prod-shared-identity-okta-servers" {
  providers = {
    azurerm = azurerm.wus-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-identity-rgs[1].name
  vm_hostname                      = "GCPWWUSAZOKT"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-prod-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorwuspcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.wus-identity-rgs]
}
//wus DEV DCs and Okta
//wus dev DC and Okta
module "corp-rg-wus-dev-shared-identity-dc-servers" {
  providers = {
    azurerm = azurerm.wus-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-identity-rgs[2].name
  vm_hostname                      = "GCDWWUSAZADC"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-dev-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstorwusdcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.wus-identity-rgs]
}
module "corp-rg-wus-dev-shared-identity-okta-servers" {
  providers = {
    azurerm = azurerm.wus-identity-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-identity-rgs[3].name
  vm_hostname                      = "GCDWWUSAZOKT"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-dev-identity-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstorwusdcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"
  tags                             = local.vm_tags
  depends_on                       = [azurerm_resource_group.wus-identity-rgs]
}
