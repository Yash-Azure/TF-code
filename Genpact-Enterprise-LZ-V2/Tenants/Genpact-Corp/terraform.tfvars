tenant_id                     = "<tenant_id>"
managed_identity_principal_id = "<managed_identity_id>" //object id of the managed identity
vm_password  = "Zaq12wsxcde3!!!"

//default Azure regions for deployment of resources
location-ind = "centralindia"
location-neu = "northeurope"
location-eus = "eastus"
location-wus = "westus2"


//VM OS variables
vm_os_linux_publisher         = "OpenLogic"
vm_os_linux_offer             = "CentOS"
vm_os_linux_sku               = "7.6"
vm_os_linux_zscaler_publisher = "zscaler"
vm_os_linux_zscaler_offer     = "zscaler-private-access"
vm_os_linux_zscaler_sku       = "zpa-con-azure"
vm_os_windows_publisher       = "MicrosoftWindowsServer"
vm_os_windows_offer           = "WindowsServer"
vm_os_windows_sku             = "2019-Datacenter"


//VM size for Dev and Prod
vm_prod_size                  = "Standard_D2s_v3"
vm_dev_size                   = "Standard_D2s_v3"


