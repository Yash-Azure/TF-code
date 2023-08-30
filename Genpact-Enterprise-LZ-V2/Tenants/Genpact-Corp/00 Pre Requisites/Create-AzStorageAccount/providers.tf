terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.4.0"
    }
  }
}

provider "azurerm" {

  alias           = "terraform-backend"
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  use_msi         = true
  

  features {}
}