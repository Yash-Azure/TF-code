// CAUTION: This scripts will lock all created resource groups with CanNotDelete permission. All resources that needs to be modified by Terraform will fail while the resource group is locked.

/*
resource "azurerm_management_lock" "resource-group-level-lock1" {
  provider   = azurerm.ind-connectivity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-prod-shared-connectivity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock2" {
  provider   = azurerm.ind-identity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-shared-dev-identity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock3" {
  provider   = azurerm.ind-identity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-shared-prod-identity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock4" {
  provider   = azurerm.ind-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-dev-shared-management-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock5" {
  provider   = azurerm.ind-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-prod-shared-management-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock6" {
  provider   = azurerm.ind-prod-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-prod-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock7" {
  provider   = azurerm.ind-prod-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-prod-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock8" {
  provider   = azurerm.ind-dev-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-dev-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock9" {
  provider   = azurerm.ind-dev-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-dev-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock10" {
  provider   = azurerm.ind-uat-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-uat-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock11" {
  provider   = azurerm.ind-uat-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-ind-uat-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock12" {
  provider   = azurerm.wus-connectivity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-shared-connectivity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock13" {
  provider   = azurerm.wus-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-dev-shared-management-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock14" {
  provider   = azurerm.wus-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-prod-shared-management-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock15" {
  provider   = azurerm.wus-identity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-shared-dev-identity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock16" {
  provider   = azurerm.wus-identity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-shared-prod-identity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock17" {
  provider   = azurerm.wus-identity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-prod-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock18" {
  provider   = azurerm.wus-prod-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-prod-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock19" {
  provider   = azurerm.wus-prod-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-dev-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock20" {
  provider   = azurerm.wus-dev-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-dev-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock21" {
  provider   = azurerm.wus-uat-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-uat-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock22" {
  provider   = azurerm.wus-uat-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-wus-uat-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock23" {
  provider   = azurerm.eus-connectivity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-shared-connectivity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock24" {
  provider   = azurerm.eus-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-dev-shared-management-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock25" {
  provider   = azurerm.eus-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-prod-shared-management-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock26" {
  provider   = azurerm.eus-identity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-shared-dev-identity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock27" {
  provider   = azurerm.eus-identity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-shared-prod-identity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock28" {
  provider   = azurerm.eus-prod-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-prod-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock29" {
  provider   = azurerm.eus-prod-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-prod-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock30" {
  provider   = azurerm.eus-dev-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-dev-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock31" {
  provider   = azurerm.eus-dev-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-dev-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock32" {
  provider   = azurerm.eus-uat-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-uat-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock33" {
  provider   = azurerm.eus-uat-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-eus-uat-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock34" {
  provider   = azurerm.neu-connectivity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-shared-connectivity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock35" {
  provider   = azurerm.neu-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-dev-shared-management-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock36" {
  provider   = azurerm.neu-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-prod-shared-management-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock37" {
  provider   = azurerm.neu-identity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-shared-dev-identity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock38" {
  provider   = azurerm.neu-identity-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-shared-prod-identity-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock39" {
  provider   = azurerm.neu-prod-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-prod-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock40" {
  provider   = azurerm.neu-prod-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-prod-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock41" {
  provider   = azurerm.neu-dev-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-dev-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock42" {
  provider   = azurerm.neu-dev-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-dev-tas-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock43" {
  provider   = azurerm.neu-uat-tis-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-uat-tis-core-network.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock44" {
  provider   = azurerm.neu-uat-tas-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.corp-rg-neu-uat-tas-core-network.id
  lock_level = "CanNotDelete"
}
resource "azurerm_management_lock" "resource-group-level-lock45" {
  provider   = azurerm.ind-identity-sub
  name       = "resource-group-level-lock"
  count      = length(local.ind-identity-rgs)
  scope      = azurerm_resource_group.ind-identity-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock46" {
  provider   = azurerm.neu-identity-sub
  name       = "resource-group-level-lock"
  count      = length(local.neu-identity-rgs)
  scope      = azurerm_resource_group.neu-identity-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock47" {
  provider   = azurerm.wus-identity-sub
  name       = "resource-group-level-lock"
  count      = length(local.wus-identity-rgs)
  scope      = azurerm_resource_group.wus-identity-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock48" {
  provider   = azurerm.eus-identity-sub
  name       = "resource-group-level-lock"
  count      = length(local.eus-identity-rgs)
  scope      = azurerm_resource_group.eus-identity-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock49" {
  provider   = azurerm.ind-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.ind-lmc-rgs)
  scope      = azurerm_resource_group.ind-lmc-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock50" {
  provider   = azurerm.neu-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.neu-lmc-rgs)
  scope      = azurerm_resource_group.neu-lmc-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock51" {
  provider   = azurerm.eus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.eus-lmc-rgs)
  scope      = azurerm_resource_group.eus-lmc-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock152" {
  provider   = azurerm.wus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.wus-lmc-rgs)
  scope      = azurerm_resource_group.wus-lmc-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock52" {
  provider   = azurerm.ind-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.ind-jmp-rgs)
  scope      = azurerm_resource_group.ind-jmp-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock53" {
  provider   = azurerm.neu-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.neu-jmp-rgs)
  scope      = azurerm_resource_group.neu-jmp-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock54" {
  provider   = azurerm.wus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.wus-jmp-rgs)
  scope      = azurerm_resource_group.wus-jmp-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock55" {
  provider   = azurerm.eus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.eus-jmp-rgs)
  scope      = azurerm_resource_group.eus-jmp-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock56" {
  provider   = azurerm.ind-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.ind-zpa-rgs)
  scope      = azurerm_resource_group.ind-jmp-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock57" {
  provider   = azurerm.neu-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.neu-zpa-rgs)
  scope      = azurerm_resource_group.neu-jmp-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock58" {
  provider   = azurerm.eus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.eus-zpa-rgs)
  scope      = azurerm_resource_group.eus-jmp-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock159" {
  provider   = azurerm.wus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.wus-zpa-rgs)
  scope      = azurerm_resource_group.wus-jmp-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock59" {
  provider   = azurerm.ind-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.ind-mgmt-rgs)
  scope      = azurerm_resource_group.ind-mgmt-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock60" {
  provider   = azurerm.neu-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.neu-mgmt-rgs)
  scope      = azurerm_resource_group.neu-mgmt-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock61" {
  provider   = azurerm.eus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.eus-mgmt-rgs)
  scope      = azurerm_resource_group.eus-mgmt-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock62" {
  provider   = azurerm.wus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.wus-mgmt-rgs)
  scope      = azurerm_resource_group.wus-mgmt-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock63" {
  provider   = azurerm.ind-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.ind-rsv-rgs)
  scope      = azurerm_resource_group.ind-rsv-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock64" {
  provider   = azurerm.neu-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.neu-rsv-rgs)
  scope      = azurerm_resource_group.neu-rsv-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock65" {
  provider   = azurerm.eus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.eus-rsv-rgs)
  scope      = azurerm_resource_group.eus-rsv-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock66" {
  provider   = azurerm.wus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.wus-rsv-rgs)
  scope      = azurerm_resource_group.wus-rsv-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock67" {
  provider   = azurerm.ind-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.ind-bootdiag-rgs)
  scope      = azurerm_resource_group.ind-bootdiagnostics-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock68" {
  provider   = azurerm.eus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.eus-bootdiag-rgs)
  scope      = azurerm_resource_group.eus-bootdiagnostics-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock69" {
  provider   = azurerm.wus-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.wus-bootdiag-rgs)
  scope      = azurerm_resource_group.wus-bootdiagnostics-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock170" {
  provider   = azurerm.neu-management-sub
  name       = "resource-group-level-lock"
  count      = length(local.neu-bootdiag-rgs)
  scope      = azurerm_resource_group.neu-bootdiagnostics-rgs[count.index].id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock71" {
  provider   = azurerm.ind-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.ind-la-workspace-rg.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock72" {
  provider   = azurerm.wus-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.wus-la-workspace-rg.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock73" {
  provider   = azurerm.eus-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.eus-la-workspace-rg.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
resource "azurerm_management_lock" "resource-group-level-lock74" {
  provider   = azurerm.neu-management-sub
  name       = "resource-group-level-lock"
  scope      = azurerm_resource_group.neu-la-workspace-rg.id
  lock_level = "CanNotDelete"
  notes      = "This resource cannot be deleted"
}
 */
