module "linuxcorp-rg-ind-prod-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.ind-management-sub
  }
  source              = "../../Modules/Create-Vms"
  resource_group_name = azurerm_resource_group.ind-jmp-rgs[0].name
  vm_hostname         = "GCPLCINAZJMP"
  vm_size             = var.vm_prod_size
  vm_os_publisher     = var.vm_os_linux_publisher
  vm_os_offer         = var.vm_os_linux_offer
  vm_os_sku           = var.vm_os_linux_sku
  vnet_subnet_id      = azurerm_subnet.corp-ind-prod-management-subnet[0].id
  enable_ssh_key      = false

  //admin_username = azureuser
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
module "windowscorp-rg-ind-prod-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.ind-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.ind-jmp-rgs[0].name
  vm_hostname                      = "GCPWCINAZJMP"
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
//India  Dev
module "linuxcorp-rg-ind-dev-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.ind-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.ind-jmp-rgs[1].name
  vm_hostname                      = "GCDLCINAZJMP"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_linux_publisher
  vm_os_offer                      = var.vm_os_linux_offer
  vm_os_sku                        = var.vm_os_linux_sku
  vnet_subnet_id                   = azurerm_subnet.corp-ind-dev-management-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorinddcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
module "windowscorp-rg-ind-dev-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.ind-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.ind-jmp-rgs[1].name
  vm_hostname                      = "GCDWCINAZJMP"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-ind-dev-management-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorinddcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
//NEU Jump Servers
module "linuxcorp-rg-neu-prod-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.neu-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-jmp-rgs[0].name
  vm_hostname                      = "GCPLNEUAZJMP"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_linux_publisher
  vm_os_offer                      = var.vm_os_linux_offer
  vm_os_sku                        = var.vm_os_linux_sku
  vnet_subnet_id                   = azurerm_subnet.corp-neu-prod-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
module "windowscorp-rg-neu-prod-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.neu-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-jmp-rgs[0].name
  vm_hostname                      = "GCPWNEUAZJMP"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-neu-prod-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
//NEU  Dev
module "linuxcorp-rg-neu-dev-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.neu-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-jmp-rgs[1].name
  vm_hostname                      = "GCDLNEUAZJMP"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_linux_publisher
  vm_os_offer                      = var.vm_os_linux_offer
  vm_os_sku                        = var.vm_os_linux_sku
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
module "windowscorp-rg-neu-dev-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.neu-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.neu-jmp-rgs[1].name
  vm_hostname                      = "GCDWNEUAZJMP"
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
//EUS Jump Servers
module "linuxcorp-rg-eus-prod-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.eus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-jmp-rgs[0].name
  vm_hostname                      = "GCPLEUSAZJMP"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_linux_publisher
  vm_os_offer                      = var.vm_os_linux_offer
  vm_os_sku                        = var.vm_os_linux_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-prod-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
module "windowscorp-rg-eus-prod-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.eus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-jmp-rgs[0].name
  vm_hostname                      = "GCPWEUSAZJMP"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-prod-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
//eus  Dev
module "linuxcorp-rg-eus-dev-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.eus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-jmp-rgs[1].name
  vm_hostname                      = "GCDLEUSAZJMP"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_linux_publisher
  vm_os_offer                      = var.vm_os_linux_offer
  vm_os_sku                        = var.vm_os_linux_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-dev-management-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstoreusdcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
module "windowscorp-rg-eus-dev-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.eus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.eus-jmp-rgs[1].name
  vm_hostname                      = "GCDWEUSAZJMP"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-eus-dev-management-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstoreusdcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
//WUS Jump Servers
module "linuxcorp-rg-wus-prod-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.wus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-jmp-rgs[0].name
  vm_hostname                      = "GCPLWUSAZJMP"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_linux_publisher
  vm_os_offer                      = var.vm_os_linux_offer
  vm_os_sku                        = var.vm_os_linux_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-prod-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
module "windowscorp-rg-wus-prod-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.wus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-jmp-rgs[0].name
  vm_hostname                      = "GCPWWUSAZJMP"
  vm_size                          = var.vm_prod_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-prod-management-subnet[0].id
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

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
//wus  Dev
module "linuxcorp-rg-wus-dev-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.wus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-jmp-rgs[1].name
  vm_hostname                      = "GCDLWUSAZJMP"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_linux_publisher
  vm_os_offer                      = var.vm_os_linux_offer
  vm_os_sku                        = var.vm_os_linux_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-dev-management-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorwusdcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
module "windowscorp-rg-wus-dev-shared-management-core-jmpservers" {
  providers = {
    azurerm = azurerm.wus-management-sub
  }
  source                           = "../../Modules/Create-Vms"
  resource_group_name              = azurerm_resource_group.wus-jmp-rgs[1].name
  vm_hostname                      = "GCDWWUSAZJMP"
  vm_size                          = var.vm_dev_size
  vm_os_publisher                  = var.vm_os_windows_publisher
  vm_os_offer                      = var.vm_os_windows_offer
  vm_os_sku                        = var.vm_os_windows_sku
  vnet_subnet_id                   = azurerm_subnet.corp-wus-dev-management-subnet[0].id
  enable_ssh_key                   = false
  admin_password                   = var.vm_password
  nb_public_ip                     = 0
  nb_instances                     = 2
  diagnostic_sa                    = azurerm_storage_account.corpstorwusdcorediag01.name
  allocation_method                = "Static"
  boot_diagnostics                 = true
  data_disk_size_gb                = 256
  delete_data_disks_on_termination = true
  delete_os_disk_on_termination    = true
  nb_data_disk                     = 1
  data_sa_type                     = "Standard_LRS"

  depends_on = [azurerm_resource_group.ind-jmp-rgs]
}
