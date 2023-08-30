locals {

  rg-name  = "corp-ind-prod-tfstate-rg"
  location = "centralindia"
}

variable "subscription_id" {
    type = string
  
}

variable "tenant_id"{
    type = string
}