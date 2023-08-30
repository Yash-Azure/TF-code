//Platform NSGS

//IND


resource "azurerm_network_security_group" "ind-prod-management-subnet-nsg" {
  count               = length(local.ind-prod-management-subnet_name)
  name                = "${local.ind-prod-management-subnet_name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-shared-management-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "ind-dev-management-subnet-nsg" {
  count               = length(local.ind-dev-management-subnet_name)
  name                = "${local.ind-dev-management-subnet_name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-dev-shared-management-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "ind-prod-identity-subnet-nsg" {
  count               = length(local.ind-prod-identity-subnet_name)
  name                = "${local.ind-prod-identity-subnet_name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-shared-prod-identity-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "ind-dev-identity-subnet-nsg" {
  count               = length(local.ind-dev-identity-subnet_name)
  name                = "${local.ind-dev-identity-subnet_name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-shared-dev-identity-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}



//NEU


resource "azurerm_network_security_group" "neu-prod-management-subnet-nsg" {
  count               = length(local.neu-prod-management-subnet_name)
  name                = "${local.neu-prod-management-subnet_name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-prod-shared-management-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "neu-dev-management-subnet-nsg" {
  count               = length(local.neu-dev-management-subnet_name)
  name                = "${local.neu-dev-management-subnet_name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-dev-shared-management-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "neu-prod-identity-subnet-nsg" {
  count               = length(local.neu-prod-identity-subnet_name)
  name                = "${local.neu-prod-identity-subnet_name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-shared-prod-identity-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "neu-dev-identity-subnet-nsg" {
  count               = length(local.neu-dev-identity-subnet_name)
  name                = "${local.neu-dev-identity-subnet_name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-shared-dev-identity-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}



//EUS


resource "azurerm_network_security_group" "eus-prod-management-subnet-nsg" {
  count               = length(local.eus-prod-management-subnet_name)
  name                = "${local.eus-prod-management-subnet_name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-prod-shared-management-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "eus-dev-management-subnet-nsg" {
  count               = length(local.eus-dev-management-subnet_name)
  name                = "${local.eus-dev-management-subnet_name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-dev-shared-management-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "eus-prod-identity-subnet-nsg" {
  count               = length(local.eus-prod-identity-subnet_name)
  name                = "${local.eus-prod-identity-subnet_name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-shared-prod-identity-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "eus-dev-identity-subnet-nsg" {
  count               = length(local.eus-dev-identity-subnet_name)
  name                = "${local.eus-dev-identity-subnet_name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-shared-dev-identity-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}





//WUS


resource "azurerm_network_security_group" "wus-prod-management-subnet-nsg" {
  count               = length(local.wus-prod-management-subnet_name)
  name                = "${local.wus-prod-management-subnet_name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-prod-shared-management-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "wus-dev-management-subnet-nsg" {
  count               = length(local.wus-dev-management-subnet_name)
  name                = "${local.wus-dev-management-subnet_name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-dev-shared-management-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "wus-prod-identity-subnet-nsg" {
  count               = length(local.wus-prod-identity-subnet_name)
  name                = "${local.wus-prod-identity-subnet_name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-shared-prod-identity-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "wus-dev-identity-subnet-nsg" {
  count               = length(local.wus-dev-identity-subnet_name)
  name                = "${local.wus-dev-identity-subnet_name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-shared-dev-identity-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}




//Landing Zone NSGS

//IND


resource "azurerm_network_security_group" "ind-prod-tis-nsg" {
  count               = length(local.ind-prod-tis-subnet-name)
  name                = "${local.ind-prod-tis-subnet-name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "ind-prod-tas-nsg" {
  count               = length(local.ind-prod-tas-subnet-name)
  name                = "${local.ind-prod-tas-subnet-name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-prod-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "ind-dev-tis-nsg" {
  count               = length(local.ind-dev-tis-subnet-name)
  name                = "${local.ind-dev-tis-subnet-name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-dev-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "ind-dev-tas-nsg" {
  count               = length(local.ind-dev-tas-subnet-name)
  name                = "${local.ind-dev-tas-subnet-name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-dev-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}




//NEU




resource "azurerm_network_security_group" "neu-prod-tis-nsg" {
  count               = length(local.neu-prod-tis-subnet-name)
  name                = "${local.neu-prod-tis-subnet-name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-prod-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "neu-prod-tas-nsg" {
  count               = length(local.neu-prod-tas-subnet-name)
  name                = "${local.neu-prod-tas-subnet-name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-prod-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "neu-dev-tis-nsg" {
  count               = length(local.neu-dev-tis-subnet-name)
  name                = "${local.neu-dev-tis-subnet-name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-dev-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "neu-dev-tas-nsg" {
  count               = length(local.neu-dev-tas-subnet-name)
  name                = "${local.neu-dev-tas-subnet-name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-dev-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}







//EUS


resource "azurerm_network_security_group" "eus-prod-tis-nsg" {
  count               = length(local.eus-prod-tis-subnet-name)
  name                = "${local.eus-prod-tis-subnet-name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-prod-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "eus-prod-tas-nsg" {
  count               = length(local.eus-prod-tas-subnet-name)
  name                = "${local.eus-prod-tas-subnet-name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-prod-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "eus-dev-tis-nsg" {
  count               = length(local.eus-dev-tis-subnet-name)
  name                = "${local.eus-dev-tis-subnet-name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-dev-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "eus-dev-tas-nsg" {
  count               = length(local.eus-dev-tas-subnet-name)
  name                = "${local.eus-dev-tas-subnet-name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-dev-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}



//WUS


resource "azurerm_network_security_group" "wus-prod-tis-nsg" {
  count               = length(local.wus-prod-tis-subnet-name)
  name                = "${local.wus-prod-tis-subnet-name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-prod-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "wus-prod-tas-nsg" {
  count               = length(local.wus-prod-tas-subnet-name)
  name                = "${local.wus-prod-tas-subnet-name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-prod-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "wus-dev-tis-nsg" {
  count               = length(local.wus-dev-tis-subnet-name)
  name                = "${local.wus-dev-tis-subnet-name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-dev-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}


resource "azurerm_network_security_group" "wus-dev-tas-nsg" {
  count               = length(local.wus-dev-tas-subnet-name)
  name                = "${local.wus-dev-tas-subnet-name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-dev-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}





resource "azurerm_network_security_group" "ind-uat-tis-nsg" {
  count               = length(local.ind-uat-tis-subnet-name)
  name                = "${local.ind-uat-tis-subnet-name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-uat-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}



resource "azurerm_network_security_group" "ind-uat-tas-nsg" {
  count               = length(local.ind-uat-tas-subnet-name)
  name                = "${local.ind-uat-tas-subnet-name[count.index]}-nsg"
  location            = var.location-ind
  resource_group_name = azurerm_resource_group.corp-rg-ind-uat-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}



resource "azurerm_network_security_group" "neu-uat-tis-nsg" {
  count               = length(local.neu-uat-tis-subnet-name)
  name                = "${local.neu-uat-tis-subnet-name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-uat-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}



resource "azurerm_network_security_group" "neu-uat-tas-nsg" {
  count               = length(local.neu-uat-tas-subnet-name)
  name                = "${local.neu-uat-tas-subnet-name[count.index]}-nsg"
  location            = var.location-neu
  resource_group_name = azurerm_resource_group.corp-rg-neu-uat-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}




resource "azurerm_network_security_group" "eus-uat-tis-nsg" {
  count               = length(local.eus-uat-tis-subnet-name)
  name                = "${local.eus-uat-tis-subnet-name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-uat-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}



resource "azurerm_network_security_group" "eus-uat-tas-nsg" {
  count               = length(local.eus-uat-tas-subnet-name)
  name                = "${local.eus-uat-tas-subnet-name[count.index]}-nsg"
  location            = var.location-eus
  resource_group_name = azurerm_resource_group.corp-rg-eus-uat-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}





resource "azurerm_network_security_group" "wus-uat-tis-nsg" {
  count               = length(local.wus-uat-tis-subnet-name)
  name                = "${local.wus-uat-tis-subnet-name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-uat-tis-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}



resource "azurerm_network_security_group" "wus-uat-tas-nsg" {
  count               = length(local.wus-uat-tas-subnet-name)
  name                = "${local.wus-uat-tas-subnet-name[count.index]}-nsg"
  location            = var.location-wus
  resource_group_name = azurerm_resource_group.corp-rg-wus-uat-tas-core-network.name

  security_rule {
    name                       = "Deny_All_Inbound"
    description                = "Deny_All_Inbound"
    priority                   = 4096
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"

  }
}



























































//NSG Associatons


//IND
resource "azurerm_subnet_network_security_group_association" "ind-prod-management-subnet-nsg" {
  count                     = length(local.ind-prod-management-subnet_name)
  subnet_id                 = azurerm_subnet.corp-ind-prod-management-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-prod-management-subnet-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "ind-dev-management-subnet-nsg" {
  count                     = length(local.ind-dev-management-subnet_name)
  subnet_id                 = azurerm_subnet.corp-ind-dev-management-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-dev-management-subnet-nsg[count.index].id

}


resource "azurerm_subnet_network_security_group_association" "ind-prod-identity-subnet-nsg" {
  count                     = length(local.ind-prod-identity-subnet_name)
  subnet_id                 = azurerm_subnet.corp-ind-prod-identity-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-prod-identity-subnet-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "ind-dev-identity-subnet-nsg" {
  count                     = length(local.ind-dev-identity-subnet_name)
  subnet_id                 = azurerm_subnet.corp-ind-dev-identity-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-dev-identity-subnet-nsg[count.index].id
}

//NEU

resource "azurerm_subnet_network_security_group_association" "neu-prod-management-subnet-nsg" {
  count                     = length(local.neu-prod-management-subnet_name)
  subnet_id                 = azurerm_subnet.corp-neu-prod-management-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-prod-management-subnet-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "neu-dev-management-subnet-nsg" {
  count                     = length(local.neu-dev-management-subnet_name)
  subnet_id                 = azurerm_subnet.corp-neu-dev-management-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-dev-management-subnet-nsg[count.index].id

}


resource "azurerm_subnet_network_security_group_association" "neu-prod-identity-subnet-nsg" {
  count                     = length(local.neu-prod-identity-subnet_name)
  subnet_id                 = azurerm_subnet.corp-neu-prod-identity-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-prod-identity-subnet-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "neu-dev-identity-subnet-nsg" {
  count                     = length(local.neu-dev-identity-subnet_name)
  subnet_id                 = azurerm_subnet.corp-neu-dev-identity-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-dev-identity-subnet-nsg[count.index].id
}


//EUS


resource "azurerm_subnet_network_security_group_association" "eus-prod-management-subnet-nsg" {
  count                     = length(local.eus-prod-management-subnet_name)
  subnet_id                 = azurerm_subnet.corp-eus-prod-management-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-prod-management-subnet-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "eus-dev-management-subnet-nsg" {
  count                     = length(local.eus-dev-management-subnet_name)
  subnet_id                 = azurerm_subnet.corp-eus-dev-management-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-dev-management-subnet-nsg[count.index].id

}


resource "azurerm_subnet_network_security_group_association" "eus-prod-identity-subnet-nsg" {
  count                     = length(local.eus-prod-identity-subnet_name)
  subnet_id                 = azurerm_subnet.corp-eus-prod-identity-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-prod-identity-subnet-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "eus-dev-identity-subnet-nsg" {
  count                     = length(local.eus-dev-identity-subnet_name)
  subnet_id                 = azurerm_subnet.corp-eus-dev-identity-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-dev-identity-subnet-nsg[count.index].id
}


//WUS



resource "azurerm_subnet_network_security_group_association" "wus-prod-management-subnet-nsg" {
  count                     = length(local.wus-prod-management-subnet_name)
  subnet_id                 = azurerm_subnet.corp-wus-prod-management-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-prod-management-subnet-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "wus-dev-management-subnet-nsg" {
  count                     = length(local.wus-dev-management-subnet_name)
  subnet_id                 = azurerm_subnet.corp-wus-dev-management-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-dev-management-subnet-nsg[count.index].id

}


resource "azurerm_subnet_network_security_group_association" "wus-prod-identity-subnet-nsg" {
  count                     = length(local.wus-prod-identity-subnet_name)
  subnet_id                 = azurerm_subnet.corp-wus-prod-identity-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-prod-identity-subnet-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "wus-dev-identity-subnet-nsg" {
  count                     = length(local.wus-dev-identity-subnet_name)
  subnet_id                 = azurerm_subnet.corp-wus-dev-identity-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-dev-identity-subnet-nsg[count.index].id
}


//Landing Zone NSG Association
//IND

resource "azurerm_subnet_network_security_group_association" "ind-prod-tis-nsg" {
  count                     = length(local.ind-prod-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-ind-prod-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-prod-tis-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "ind-prod-tas-nsg" {
  count                     = length(local.ind-prod-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-ind-prod-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-prod-tas-nsg[count.index].id
}



resource "azurerm_subnet_network_security_group_association" "ind-dev-tis-nsg" {
  count                     = length(local.ind-dev-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-ind-dev-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-dev-tis-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "ind-dev-tas-nsg" {
  count                     = length(local.ind-dev-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-ind-dev-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-dev-tas-nsg[count.index].id
}







//NEU



resource "azurerm_subnet_network_security_group_association" "neu-prod-tis-nsg" {
  count                     = length(local.neu-prod-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-neu-prod-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-prod-tis-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "neu-prod-tas-nsg" {
  count                     = length(local.neu-prod-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-neu-prod-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-prod-tas-nsg[count.index].id
}



resource "azurerm_subnet_network_security_group_association" "neu-dev-tis-nsg" {
  count                     = length(local.neu-dev-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-neu-dev-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-dev-tis-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "neu-dev-tas-nsg" {
  count                     = length(local.neu-dev-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-neu-dev-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-dev-tas-nsg[count.index].id
}


//EUS


resource "azurerm_subnet_network_security_group_association" "eus-prod-tis-nsg" {
  count                     = length(local.eus-prod-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-eus-prod-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-prod-tis-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "eus-prod-tas-nsg" {
  count                     = length(local.eus-prod-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-eus-prod-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-prod-tas-nsg[count.index].id
}



resource "azurerm_subnet_network_security_group_association" "eus-dev-tis-nsg" {
  count                     = length(local.eus-dev-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-eus-dev-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-dev-tis-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "eus-dev-tas-nsg" {
  count                     = length(local.eus-dev-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-eus-dev-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-dev-tas-nsg[count.index].id
}


//WUS

resource "azurerm_subnet_network_security_group_association" "wus-prod-tis-nsg" {
  count                     = length(local.wus-prod-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-wus-prod-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-prod-tis-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "wus-prod-tas-nsg" {
  count                     = length(local.wus-prod-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-wus-prod-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-prod-tas-nsg[count.index].id
}



resource "azurerm_subnet_network_security_group_association" "wus-dev-tis-nsg" {
  count                     = length(local.wus-dev-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-wus-dev-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-dev-tis-nsg[count.index].id
}

resource "azurerm_subnet_network_security_group_association" "wus-dev-tas-nsg" {
  count                     = length(local.wus-dev-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-wus-dev-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-dev-tas-nsg[count.index].id
}




resource "azurerm_subnet_network_security_group_association" "ind-uat-tis-nsg" {
  count                     = length(local.ind-uat-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-ind-uat-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-prod-tis-nsg[count.index].id
}


resource "azurerm_subnet_network_security_group_association" "ind-uat-tas-nsg" {
  count                     = length(local.ind-uat-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-ind-uat-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.ind-prod-tas-nsg[count.index].id
}



resource "azurerm_subnet_network_security_group_association" "neu-uat-tis-nsg" {
  count                     = length(local.neu-uat-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-neu-uat-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-prod-tis-nsg[count.index].id
}


resource "azurerm_subnet_network_security_group_association" "neu-uat-tas-nsg" {
  count                     = length(local.neu-uat-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-neu-uat-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.neu-prod-tas-nsg[count.index].id
}



resource "azurerm_subnet_network_security_group_association" "eus-uat-tis-nsg" {
  count                     = length(local.eus-uat-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-eus-uat-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-prod-tis-nsg[count.index].id
}


resource "azurerm_subnet_network_security_group_association" "eus-uat-tas-nsg" {
  count                     = length(local.eus-uat-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-eus-uat-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.eus-prod-tas-nsg[count.index].id
}




resource "azurerm_subnet_network_security_group_association" "wus-uat-tis-nsg" {
  count                     = length(local.wus-uat-tis-subnet-name)
  subnet_id                 = azurerm_subnet.corp-wus-uat-tis-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-prod-tis-nsg[count.index].id
}


resource "azurerm_subnet_network_security_group_association" "wus-uat-tas-nsg" {
  count                     = length(local.wus-uat-tas-subnet-name)
  subnet_id                 = azurerm_subnet.corp-wus-uat-tas-subnet[count.index].id
  network_security_group_id = azurerm_network_security_group.wus-prod-tas-nsg[count.index].id
}