terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.5.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "corp-ind-prod-tfstate-rg" //replace with your own storage account resource group for the state file
    storage_account_name = "tfstatetnz0vyyb6i" //replace with your own storage account name
    container_name       = "tfstate-container" //replace with your own container name
    key                  = "terraform-genpact-eslz-managedidentity.tfstate" //replace with your own file name for the state file ending in .tfstate

  }
}
provider "azuread" {
  use_msi   = true
  tenant_id = var.tenant_id

}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  subscription_id = local.platform-ind-connectivity-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true // refer to https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block for the settings on the features block
      recover_soft_deleted_key_vaults = true
    }

    log_analytics_workspace {
      permanently_delete_on_destroy = false
    }
    resource_group {
      prevent_deletion_if_contains_resources = false // set to true for production
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = true
    }
  }
}

//India Platform Providers
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "ind-connectivity-sub"
  subscription_id = local.platform-ind-connectivity-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "ind-identity-sub"
  subscription_id = local.platform-ind-identity-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "ind-management-sub"
  subscription_id = local.platform-ind-management-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "ind-prod-tis-sub"
  subscription_id = local.ind-prod-tis-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "ind-prod-tas-sub"
  subscription_id = local.ind-prod-tas-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "ind-dev-tas-sub"
  subscription_id = local.ind-dev-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "ind-dev-tis-sub"
  subscription_id = local.ind-dev-tis-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "ind-uat-tas-sub"
  subscription_id = local.ind-uat-tas-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "ind-uat-tis-sub"
  subscription_id = local.ind-uat-tis-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

//NEU Platform Providers
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "neu-connectivity-sub"
  subscription_id = local.platform-neu-connectivity-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "neu-identity-sub"
  subscription_id = local.platform-neu-identity-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "neu-management-sub"
  subscription_id = local.platform-neu-management-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

//EUS Platform Providers

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "eus-connectivity-sub"
  subscription_id = local.platform-eus-connectivity-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "eus-identity-sub"
  subscription_id = local.platform-eus-identity-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "eus-management-sub"
  subscription_id = local.platform-eus-management-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


//WUS Platform Providers
provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "wus-connectivity-sub"
  subscription_id = local.platform-wus-connectivity-sub
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "wus-identity-sub"
  subscription_id = local.platform-wus-identity-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "wus-management-sub"
  subscription_id = local.platform-wus-management-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}




//NEU Landing Zones

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "neu-prod-tas-sub"
  subscription_id = local.neu-prod-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "neu-prod-tis-sub"
  subscription_id = local.neu-prod-tis-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "neu-dev-tas-sub"
  subscription_id = local.neu-dev-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "neu-dev-tis-sub"
  subscription_id = local.neu-dev-tis-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "neu-uat-tas-sub"
  subscription_id = local.neu-uat-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "neu-uat-tis-sub"
  subscription_id = local.neu-uat-tis-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}



//EUS Landing Zones

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "eus-prod-tas-sub"
  subscription_id = local.eus-prod-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "eus-prod-tis-sub"
  subscription_id = local.eus-prod-tis-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "eus-dev-tas-sub"
  subscription_id = local.eus-dev-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "eus-dev-tis-sub"
  subscription_id = local.eus-dev-tis-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "eus-uat-tas-sub"
  subscription_id = local.eus-uat-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "eus-uat-tis-sub"
  subscription_id = local.eus-uat-tis-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}




//WUS Landing Zones

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "wus-prod-tas-sub"
  subscription_id = local.wus-prod-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "wus-prod-tis-sub"
  subscription_id = local.wus-prod-tis-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "wus-dev-tas-sub"
  subscription_id = local.wus-dev-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}


provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "wus-dev-tis-sub"
  subscription_id = local.wus-dev-tis-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "wus-uat-tas-sub"
  subscription_id = local.wus-uat-tas-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

provider "azurerm" {
  use_msi         = true
  tenant_id       = var.tenant_id
  alias           = "wus-uat-tis-sub"
  subscription_id = local.wus-uat-tis-sub

  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }

    resource_group {
      prevent_deletion_if_contains_resources = false
    }


    virtual_machine {
      delete_os_disk_on_deletion     = true
      graceful_shutdown              = false
      skip_shutdown_and_force_delete = false
    }
  }
}

