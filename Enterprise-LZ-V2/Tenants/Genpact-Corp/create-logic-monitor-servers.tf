//ind Prod LMC
module "corp-rg-ind-prod-shared-management-logicmonitor-servers" {
  providers = {
    azurerm = azurerm.ind-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.ind-lmc-rgs[0].name
  vm_hostname                      = "GCPWCINAZLMC"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-ind-prod-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.ind-lmc-rgs]
}
//ind Dev LMC
module "corp-rg-ind-dev-shared-management-logicmonitor-servers" {
  providers = {
    azurerm = azurerm.ind-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.ind-lmc-rgs[1].name
  vm_hostname                      = "GCDWCINAZLMC"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-ind-dev-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.ind-lmc-rgs]
}
//NEU
//neu Prod LMC
module "corp-rg-neu-prod-shared-management-logicmonitor-servers" {
  providers = {
    azurerm = azurerm.neu-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-lmc-rgs[0].name
  vm_hostname                      = "GCPWNEUAZLMC"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-neu-prod-management-subnet[1].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstorneupcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"

  depends_on = [azurerm_resource_group.neu-lmc-rgs]
}
//neu Dev LMC
module "corp-rg-neu-dev-shared-management-logicmonitor-servers" {
  providers = {
    azurerm = azurerm.neu-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-lmc-rgs[1].name
  vm_hostname                      = "GCDWNEUAZLMC"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-neu-dev-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.neu-lmc-rgs]
}
//eus
//eus Prod LMC
module "corp-rg-eus-prod-shared-management-logicmonitor-servers" {
  providers = {
    azurerm = azurerm.eus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-lmc-rgs[0].name
  vm_hostname                      = "GCPWEUSAZLMC"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-prod-management-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstoreuspcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"

  depends_on = [azurerm_resource_group.eus-lmc-rgs]
}
//eus Dev LMC
module "corp-rg-eus-dev-shared-management-logicmonitor-servers" {
  providers = {
    azurerm = azurerm.eus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-lmc-rgs[1].name
  vm_hostname                      = "GCDWEUSAZLMC"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-dev-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.eus-lmc-rgs]
}
//wus
//wus Prod LMC
module "corp-rg-wus-prod-shared-management-logicmonitor-servers" {
  providers = {
    azurerm = azurerm.wus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-lmc-rgs[0].name
  vm_hostname                      = "GCPWWUSAZLMC"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-prod-management-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 1
  diagnostic_sa                    = azurerm_storage_account.corpstorwuspcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Premium_LRS"

  depends_on = [azurerm_resource_group.wus-lmc-rgs]
}
//wus Dev LMC
module "corp-rg-wus-dev-shared-management-logicmonitor-servers" {
  providers = {
    azurerm = azurerm.wus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-lmc-rgs[1].name
  vm_hostname                      = "GCDWWUSAZLMC"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-dev-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.wus-lmc-rgs]
}
