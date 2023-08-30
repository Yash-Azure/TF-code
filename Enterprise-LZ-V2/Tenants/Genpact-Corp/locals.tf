//REQUIRED - Set individual subscription_ids for each platform/landing zone

locals {
  //Local variables for Subscription IDs
  platform-ind-connectivity-sub = "<replace with subscription_id>"
  platform-ind-identity-sub     = "<replace with subscription_id>"
  platform-ind-management-sub   = "<replace with subscription_id>"
  platform-ind-security-sub     = "<replace with subscription_id>"
  platform-neu-connectivity-sub = "<replace with subscription_id>"
  platform-neu-identity-sub     = "<replace with subscription_id>"
  platform-neu-management-sub   = "<replace with subscription_id>"
  platform-neu-security-sub     = "<replace with subscription_id>"
  platform-eus-connectivity-sub = "<replace with subscription_id>"
  platform-eus-identity-sub     = "<replace with subscription_id>"
  platform-eus-management-sub   = "<replace with subscription_id>"
  platform-eus-security-sub     = "<replace with subscription_id>"
  platform-wus-connectivity-sub = "<replace with subscription_id>"
  platform-wus-identity-sub     = "<replace with subscription_id>"
  platform-wus-management-sub   = "<replace with subscription_id>"
  platform-wus-security-sub     = "<replace with subscription_id>"

  //Landing Zone Subscriptions
  ind-prod-tas-sub = "<replace with subscription_id>"
  ind-prod-tis-sub = "<replace with subscription_id>"
  ind-dev-tas-sub  = "<replace with subscription_id>"
  ind-dev-tis-sub  = "<replace with subscription_id>"
  ind-uat-tas-sub  = "<replace with subscription_id>"
  ind-uat-tis-sub  = "<replace with subscription_id>"
  neu-prod-tas-sub = "<replace with subscription_id>"
  neu-prod-tis-sub = "<replace with subscription_id>"
  neu-dev-tas-sub  = "<replace with subscription_id>"
  neu-dev-tis-sub  = "<replace with subscription_id>"
  neu-uat-tas-sub  = "<replace with subscription_id>"
  neu-uat-tis-sub  = "<replace with subscription_id>"
  eus-prod-tas-sub = "<replace with subscription_id>"
  eus-prod-tis-sub = "<replace with subscription_id>"
  eus-dev-tas-sub  = "<replace with subscription_id>"
  eus-dev-tis-sub  = "<replace with subscription_id>"
  eus-uat-tas-sub  = "<replace with subscription_id>"
  eus-uat-tis-sub  = "<replace with subscription_id>"
  wus-prod-tas-sub = "<replace with subscription_id>"
  wus-prod-tis-sub = "<replace with subscription_id>"
  wus-dev-tas-sub  = "<replace with subscription_id>"
  wus-dev-tis-sub  = "<replace with subscription_id>"
  wus-uat-tas-sub  = "<replace with subscription_id>"
  wus-uat-tis-sub  = "<replace with subscription_id>"
}




################################## Start of Local variables for all resources



locals {

  //Resource Groups for Identity environments
  ind-identity-rgs = ["corp-rg-ind-prod-shared-identity-core-adc", "corp-rg-ind-prod-shared-identity-core-okta", "corp-rg-ind-dev-shared-identity-core-adc", "corp-rg-ind-dev-shared-identity-core-okta"]
  neu-identity-rgs = ["corp-rg-neu-prod-shared-identity-core-adc", "corp-rg-neu-prod-shared-identity-core-okta", "corp-rg-neu-dev-shared-identity-core-adc", "corp-rg-neu-dev-shared-identity-core-okta"]
  wus-identity-rgs = ["corp-rg-wus-prod-shared-identity-core-adc", "corp-rg-wus-prod-shared-identity-core-okta", "corp-rg-wus-dev-shared-identity-core-adc", "corp-rg-wus-dev-shared-identity-core-okta"]
  eus-identity-rgs = ["corp-rg-eus-prod-shared-identity-core-adc", "corp-rg-eus-prod-shared-identity-core-okta", "corp-rg-eus-dev-shared-identity-core-adc", "corp-rg-eus-dev-shared-identity-core-okta"]

  //Resource Groups for ZScalers Management environments
  ind-zpa-rgs = ["corp-rg-ind-prod-shared-management-core-zpa", "corp-rg-ind-dev-shared-management-core-zpa"]
  neu-zpa-rgs = ["corp-rg-neu-prod-shared-management-core-zpa", "corp-rg-neu-dev-shared-management-core-zpa"]
  wus-zpa-rgs = ["corp-rg-wus-prod-shared-management-core-zpa", "corp-rg-wus-dev-shared-management-core-zpa"]
  eus-zpa-rgs = ["corp-rg-eus-prod-shared-management-core-zpa", "corp-rg-eus-dev-shared-management-core-zpa"]


  //Resource Groups for Logic Monitor
  ind-lmc-rgs = ["corp-rg-ind-prod-shared-management-core-lmc", "corp-rg-ind-dev-shared-management-core-lmc"]
  neu-lmc-rgs = ["corp-rg-neu-prod-shared-management-core-lmc", "corp-rg-neu-dev-shared-management-core-lmc"]
  wus-lmc-rgs = ["corp-rg-wus-prod-shared-management-core-lmc", "corp-rg-wus-dev-shared-management-core-lmc"]
  eus-lmc-rgs = ["corp-rg-eus-prod-shared-management-core-lmc", "corp-rg-eus-dev-shared-management-core-lmc"]

  //Resource Groups for Jump Servers
  ind-jmp-rgs = ["corp-rg-ind-prod-shared-management-core-jmp", "corp-rg-ind-dev-shared-management-core-jmp"]
  eus-jmp-rgs = ["corp-rg-eus-prod-shared-management-core-jmp", "corp-rg-eus-dev-shared-management-core-jmp"]
  wus-jmp-rgs = ["corp-rg-wus-prod-shared-management-core-jmp", "corp-rg-wus-dev-shared-management-core-jmp"]
  neu-jmp-rgs = ["corp-rg-neu-prod-shared-management-core-jmp", "corp-rg-neu-dev-shared-management-core-jmp"]

  //Resource Groups for Keyvault Services

  ind-akv-rgs = ["corp-rg-ind-prod-shared-management-core-akv", "corp-rg-ind-dev-shared-management-core-akv"]
  eus-akv-rgs = ["corp-rg-eus-prod-shared-management-core-akv", "corp-rg-eus-dev-shared-management-core-akv"]
  wus-akv-rgs = ["corp-rg-wus-prod-shared-management-core-akv", "corp-rg-wus-dev-shared-management-core-akv"]
  neu-akv-rgs = ["corp-rg-neu-prod-shared-management-core-akv", "corp-rg-neu-dev-shared-management-core-akv"]

  //Resource Groups for Recovey Services Vault


  ind-rsv-rgs = ["corp-rsv-ind-prod-shared-management-core-rsv", "corp-rsv-ind-dev-shared-management-core-rsv"]
  neu-rsv-rgs = ["corp-rsv-neu-prod-shared-management-core-rsv", "corp-rsv-neu-dev-shared-management-core-rsv"]
  eus-rsv-rgs = ["corp-rsv-eus-prod-shared-management-core-rsv", "corp-rsv-eus-dev-shared-management-core-rsv"]
  wus-rsv-rgs = ["corp-rsv-wus-prod-shared-management-core-rsv", "corp-rsv-wus-dev-shared-management-core-rsv"]

  //Resource Groups for Boot Diagnostics

  ind-bootdiag-rgs = ["corp-rg-ind-prod-shared-boot-diag", "corp-rg-ind-dev-shared-boot-diag", "corp-rg-ind-prod-tas-boot-diag", "corp-rg-ind-prod-tis-boot-diag", "corp-rg-ind-dev-tas-boot-diag", "corp-rg-ind-dev-tis-boot-diag"]
  neu-bootdiag-rgs = ["corp-rg-neu-prod-shared-boot-diag", "corp-rg-neu-dev-shared-boot-diag", "corp-rg-neu-prod-tas-boot-diag", "corp-rg-neu-prod-tis-boot-diag", "corp-rg-neu-dev-tas-boot-diag", "corp-rg-neu-dev-tis-boot-diag"]
  wus-bootdiag-rgs = ["corp-rg-wus-prod-shared-boot-diag", "corp-rg-wus-dev-shared-boot-diag", "corp-rg-wus-prod-tas-boot-diag", "corp-rg-wus-prod-tis-boot-diag", "corp-rg-wus-dev-tas-boot-diag", "corp-rg-wus-dev-tis-boot-diag"]
  eus-bootdiag-rgs = ["corp-rg-eus-prod-shared-boot-diag", "corp-rg-eus-dev-shared-boot-diag", "corp-rg-eus-prod-tas-boot-diag", "corp-rg-eus-prod-tis-boot-diag", "corp-rg-eus-dev-tas-boot-diag", "corp-rg-eus-dev-tis-boot-diag"]

  //Resource Groups for Prod Regional Log Analytics

  all-regions-laworkspace-rg = ["corp-rg-ind-prod-shared-management-core-log", "corp-rg-neu-prod-shared-management-core-log", "corp-rg-eus-prod-shared-management-core-log", "corp-rg-wus-prod-shared-management-core-log"]
}
locals {
  //Local variables for Azure subnets and subnet names


  ind-prod-management-subnet_name             = ["corp-snet-ind-prod-mgmt-private-01", "corp-snet-ind-prod-mgmt-public-01", "corp-snet-ind-prod-mgmt-db-01"]
  ind-prod-management-subnet_address_prefixes = ["10.248.0.0/26", "10.248.0.64/26", "10.248.0.128/26"]

  ind-dev-management-subnet_name             = ["corp-snet-ind-dev-mgmt-private-01", "corp-snet-ind-dev-mgmt-public-01", "corp-snet-ind-dev-mgmt-db-01"]
  ind-dev-management-subnet_address_prefixes = ["10.248.2.0/26", "10.248.2.64/26", "10.248.2.128/26"]

  ind-prod-identity-subnet_name             = ["corp-snet-ind-prod-identity-private-01", "corp-snet-ind-prod-identity-public-01", "corp-snet-ind-prod-identity-db-01"]
  ind-prod-identity-subnet_address_prefixes = ["10.248.4.0/26", "10.248.4.64/26", "10.248.4.128/26"]

  ind-dev-identity-subnet_name             = ["corp-snet-ind-dev-identity-private-01", "corp-snet-ind-dev-identity-public-01", "corp-snet-ind-dev-identity-db-01"]
  ind-dev-identity-subnet_address_prefixes = ["10.248.6.0/26", "10.248.6.64/26", "10.248.6.128/26"]

  eus-prod-management-subnet_name             = ["corp-snet-eus-prod-mgmt-private-01", "corp-snet-eus-prod-mgmt-public-01", "corp-snet-eus-prod-mgmt-db-01"]
  eus-prod-management-subnet_address_prefixes = ["10.249.0.0/26", "10.249.0.64/26", "10.249.0.128/26"]

  eus-dev-management-subnet_name             = ["corp-snet-eus-dev-mgmt-private-01", "corp-snet-eus-dev-mgmt-public-01", "corp-snet-eus-dev-mgmt-db-01"]
  eus-dev-management-subnet_address_prefixes = ["10.249.2.0/26", "10.249.2.64/26", "10.249.2.128/26"]

  eus-prod-identity-subnet_name             = ["corp-snet-eus-prod-identity-private-01", "corp-snet-eus-prod-identity-public-01", "corp-snet-eus-prod-identity-db-01"]
  eus-prod-identity-subnet_address_prefixes = ["10.249.4.0/26", "10.249.4.64/26", "10.249.4.128/26"]

  eus-dev-identity-subnet_name             = ["corp-snet-eus-dev-identity-private-01", "corp-snet-eus-dev-identity-public-01", "corp-snet-eus-dev-identity-db-01"]
  eus-dev-identity-subnet_address_prefixes = ["10.249.6.0/26", "10.249.6.64/26", "10.249.6.128/26"]

  wus-prod-management-subnet_name             = ["corp-snet-wus-prod-mgmt-private-01", "corp-snet-wus-prod-mgmt-public-01", "corp-snet-wus-prod-mgmt-db-01"]
  wus-prod-management-subnet_address_prefixes = ["10.250.0.0/26", "10.250.0.64/26", "10.250.0.128/26"]

  wus-dev-management-subnet_name             = ["corp-snet-wus-dev-mgmt-private-01", "corp-snet-wus-dev-mgmt-public-01", "corp-snet-wus-dev-mgmt-db-01"]
  wus-dev-management-subnet_address_prefixes = ["10.250.2.0/26", "10.250.2.64/26", "10.250.2.128/26"]

  wus-prod-identity-subnet_name             = ["corp-snet-wus-prod-identity-private-01", "corp-snet-wus-prod-identity-public-01", "corp-snet-wus-prod-identity-db-01"]
  wus-prod-identity-subnet_address_prefixes = ["10.250.4.0/26", "10.250.4.64/26", "10.250.4.128/26"]

  wus-dev-identity-subnet_name             = ["corp-snet-wus-dev-identity-private-01", "corp-snet-wus-dev-identity-public-01", "corp-snet-wus-dev-identity-db-01"]
  wus-dev-identity-subnet_address_prefixes = ["10.250.6.0/26", "10.250.6.64/26", "10.250.6.128/26"]

  neu-prod-management-subnet_name             = ["corp-snet-neu-prod-mgmt-private-01", "corp-snet-neu-prod-mgmt-public-01", "corp-snet-neu-prod-mgmt-db-01"]
  neu-prod-management-subnet_address_prefixes = ["10.251.0.0/26", "10.251.0.64/26", "10.251.0.128/26"]

  neu-dev-management-subnet_name             = ["corp-snet-neu-dev-mgmt-private-01", "corp-snet-neu-dev-mgmt-public-01", "corp-snet-neu-dev-mgmt-db-01"]
  neu-dev-management-subnet_address_prefixes = ["10.251.2.0/26", "10.251.2.64/26", "10.251.2.128/26"]

  neu-prod-identity-subnet_name             = ["corp-snet-neu-prod-identity-private-01", "corp-snet-neu-prod-identity-public-01", "corp-snet-neu-prod-identity-db-01"]
  neu-prod-identity-subnet_address_prefixes = ["10.251.4.0/26", "10.251.4.64/26", "10.251.4.128/26"]

  neu-dev-identity-subnet_name             = ["corp-snet-neu-dev-identity-private-01", "corp-snet-neu-dev-identity-public-01", "corp-snet-neu-dev-identity-db-01"]
  neu-dev-identity-subnet_address_prefixes = ["10.251.6.0/26", "10.251.6.64/26", "10.251.6.128/26"]


  //Landing Zone Subnets
  //IND
  ind-prod-tis-subnet-name = ["corp-snet-ind-prod-tis-mgmt-private-01", "corp-snet-ind-prod-tis-mgmt-public-01", "corp-snet-ind-prod-tas-mgmt-db-01",
    "corp-snet-ind-prod-tis-mgmt-private-02", "corp-snet-ind-prod-tis-mgmt-public-02", "corp-snet-ind-prod-tas-mgmt-db-02",
    "corp-snet-ind-prod-tis-mgmt-private-03", "corp-snet-ind-prod-tis-mgmt-public-03", "corp-snet-ind-prod-tas-mgmt-db-03",
  "corp-snet-ind-prod-tis-mgmt-private-04", "corp-snet-ind-prod-tis-mgmt-public-04", "corp-snet-ind-prod-tas-mgmt-db-04"]

  ind-prod-tis-subnet = ["10.248.8.0/26", "10.248.8.64/26", "10.248.8.128/26",
    "10.248.10.0/26", "10.248.10.64/26", "10.248.10.128/26",
    "10.248.12.0/26", "10.248.12.64/26", "10.248.12.128/26",
  "10.248.14.0/26", "10.248.14.64/26", "10.248.14.128/26"]

  ind-prod-tas-subnet-name = ["corp-snet-ind-prod-tas-mgmt-private-01", "corp-snet-ind-prod-tas-mgmt-public-01", "corp-snet-ind-prod-tas-mgmt-db-01",
    "corp-snet-ind-prod-tas-mgmt-private-02", "corp-snet-ind-prod-tas-mgmt-public-02", "corp-snet-ind-prod-tas-mgmt-db-02",
    "corp-snet-ind-prod-tas-mgmt-private-03", "corp-snet-ind-prod-tas-mgmt-public-03", "corp-snet-ind-prod-tas-mgmt-db-03",
  "corp-snet-ind-prod-tas-mgmt-private-04", "corp-snet-ind-prod-tas-mgmt-public-04", "corp-snet-ind-prod-tas-mgmt-db-04"]


  ind-prod-tas-subnet = ["10.248.16.0/26", "10.248.16.64/26", "10.248.16.128/26",
    "10.248.18.0/26", "10.248.18.64/26", "10.248.18.128/26",
    "10.248.20.0/26", "10.248.20.64/26", "10.248.20.128/26",
  "10.248.22.0/26", "10.248.22.64/26", "10.248.22.128/26"]

  ind-dev-tis-subnet-name = ["corp-snet-ind-dev-tis-mgmt-private-01", "corp-snet-ind-dev-tis-mgmt-public-01", "corp-snet-ind-dev-tis-mgmt-db-01",
    "corp-snet-ind-dev-tis-mgmt-private-02", "corp-snet-ind-dev-tis-mgmt-public-02", "corp-snet-ind-dev-tis-mgmt-db-02",
    "corp-snet-ind-dev-tis-mgmt-private-03", "corp-snet-ind-dev-tis-mgmt-public-03", "corp-snet-ind-dev-tis-mgmt-db-03",
  "corp-snet-ind-dev-tis-mgmt-private-04", "corp-snet-ind-dev-tis-mgmt-public-04", "corp-snet-ind-dev-tis-mgmt-db-04"]


  ind-dev-tis-subnet = ["10.248.24.0/26", "10.248.24.64/26", "10.248.24.128/26",
    "10.248.26.0/26", "10.248.26.64/26", "10.248.26.128/26",
    "10.248.28.0/26", "10.248.28.64/26", "10.248.28.128/26",
  "10.248.30.0/26", "10.248.30.64/26", "10.248.30.128/26"]

  ind-dev-tas-subnet-name = ["corp-snet-ind-dev-tas-mgmt-private-01", "corp-snet-ind-dev-tas-mgmt-public-01", "corp-snet-ind-dev-tas-mgmt-db-01",
    "corp-snet-ind-dev-tas-mgmt-private-02", "corp-snet-ind-dev-tas-mgmt-public-02", "corp-snet-ind-dev-tas-mgmt-db-02",
    "corp-snet-ind-dev-tas-mgmt-private-03", "corp-snet-ind-dev-tas-mgmt-public-03", "corp-snet-ind-dev-tas-mgmt-db-03",
  "corp-snet-ind-dev-tas-mgmt-private-04", "corp-snet-ind-dev-tas-mgmt-public-04", "corp-snet-ind-dev-tas-mgmt-db-04"]



  ind-dev-tas-subnet = ["10.248.32.0/26", "10.248.32.64/26", "10.248.32.128/26",
    "10.248.34.0/26", "10.248.34.64/26", "10.248.34.128/26",
    "10.248.36.0/26", "10.248.36.64/26", "10.248.36.128/26",
  "10.248.38.0/26", "10.248.38.64/26", "10.248.38.128/26"]

  ind-uat-tis-subnet-name = ["corp-snet-ind-uat-tis-mgmt-private-01", "corp-snet-ind-uat-tis-mgmt-public-01", "corp-snet-ind-uat-tis-mgmt-db-01",
  "corp-snet-ind-uat-tis-mgmt-private-02", "corp-snet-ind-uat-tis-mgmt-public-02", "corp-snet-ind-uat-tis-mgmt-db-02"]

  ind-uat-tis-subnet = ["10.248.40.0/26", "10.248.40.64/26", "10.248.40.128/26",
  "10.248.42.0/26", "10.248.42.64/26", "10.248.42.128/26"]

  ind-uat-tas-subnet-name = ["corp-snet-ind-uat-tas-mgmt-private-01", "corp-snet-ind-uat-tas-mgmt-public-01", "corp-snet-ind-uat-tas-mgmt-db-01",
  "corp-snet-ind-uat-tas-mgmt-private-02", "corp-snet-ind-uat-tas-mgmt-public-02", "corp-snet-ind-uat-tas-mgmt-db-02"]

  ind-uat-tas-subnet = ["10.248.44.0/26", "10.248.44.64/26", "10.248.44.128/26",
  "10.248.46.0/26", "10.248.46.64/26", "10.248.46.128/26"]




  //NEU
  neu-prod-tis-subnet-name = ["corp-snet-neu-prod-tis-mgmt-private-01", "corp-snet-neu-prod-tis-mgmt-public-01", "corp-snet-neu-prod-tas-mgmt-db-01",
    "corp-snet-neu-prod-tis-mgmt-private-02", "corp-snet-neu-prod-tis-mgmt-public-02", "corp-snet-neu-prod-tas-mgmt-db-02",
    "corp-snet-neu-prod-tis-mgmt-private-03", "corp-snet-neu-prod-tis-mgmt-public-03", "corp-snet-neu-prod-tas-mgmt-db-03",
  "corp-snet-neu-prod-tis-mgmt-private-04", "corp-snet-neu-prod-tis-mgmt-public-04", "corp-snet-neu-prod-tas-mgmt-db-04"]

  neu-prod-tis-subnet = ["10.251.8.0/26", "10.251.8.64/26", "10.251.8.128/26",
    "10.251.10.0/26", "10.251.10.64/26", "10.251.10.128/26",
    "10.251.12.0/26", "10.251.12.64/26", "10.251.12.128/26",
  "10.251.14.0/26", "10.251.14.64/26", "10.251.14.128/26"]

  neu-prod-tas-subnet-name = ["corp-snet-neu-prod-tas-mgmt-private-01", "corp-snet-neu-prod-tas-mgmt-public-01", "corp-snet-neu-prod-tas-mgmt-db-01",
    "corp-snet-neu-prod-tas-mgmt-private-02", "corp-snet-neu-prod-tas-mgmt-public-02", "corp-snet-neu-prod-tas-mgmt-db-02",
    "corp-snet-neu-prod-tas-mgmt-private-03", "corp-snet-neu-prod-tas-mgmt-public-03", "corp-snet-neu-prod-tas-mgmt-db-03",
  "corp-snet-neu-prod-tas-mgmt-private-04", "corp-snet-neu-prod-tas-mgmt-public-04", "corp-snet-neu-prod-tas-mgmt-db-04"]


  neu-prod-tas-subnet = ["10.251.16.0/26", "10.251.16.64/26", "10.251.16.128/26",
    "10.251.18.0/26", "10.251.18.64/26", "10.251.18.128/26",
    "10.251.20.0/26", "10.251.20.64/26", "10.251.20.128/26",
  "10.251.22.0/26", "10.251.22.64/26", "10.251.22.128/26"]

  neu-dev-tis-subnet-name = ["corp-snet-neu-dev-tis-mgmt-private-01", "corp-snet-neu-dev-tis-mgmt-public-01", "corp-snet-neu-dev-tis-mgmt-db-01",
    "corp-snet-neu-dev-tis-mgmt-private-02", "corp-snet-neu-dev-tis-mgmt-public-02", "corp-snet-neu-dev-tis-mgmt-db-02",
    "corp-snet-neu-dev-tis-mgmt-private-03", "corp-snet-neu-dev-tis-mgmt-public-03", "corp-snet-neu-dev-tis-mgmt-db-03",
  "corp-snet-neu-dev-tis-mgmt-private-04", "corp-snet-neu-dev-tis-mgmt-public-04", "corp-snet-neu-dev-tis-mgmt-db-04"]


  neu-dev-tis-subnet = ["10.251.24.0/26", "10.251.24.64/26", "10.251.24.128/26",
    "10.251.26.0/26", "10.251.26.64/26", "10.251.26.128/26",
    "10.251.28.0/26", "10.251.28.64/26", "10.251.28.128/26",
  "10.251.30.0/26", "10.251.30.64/26", "10.251.30.128/26"]

  neu-dev-tas-subnet-name = ["corp-snet-neu-dev-tas-mgmt-private-01", "corp-snet-neu-dev-tas-mgmt-public-01", "corp-snet-neu-dev-tas-mgmt-db-01",
    "corp-snet-neu-dev-tas-mgmt-private-02", "corp-snet-neu-dev-tas-mgmt-public-02", "corp-snet-neu-dev-tas-mgmt-db-02",
    "corp-snet-neu-dev-tas-mgmt-private-03", "corp-snet-neu-dev-tas-mgmt-public-03", "corp-snet-neu-dev-tas-mgmt-db-03",
  "corp-snet-neu-dev-tas-mgmt-private-04", "corp-snet-neu-dev-tas-mgmt-public-04", "corp-snet-neu-dev-tas-mgmt-db-04"]



  neu-dev-tas-subnet = ["10.251.32.0/26", "10.251.32.64/26", "10.251.32.128/26",
    "10.251.34.0/26", "10.251.34.64/26", "10.251.34.128/26",
    "10.251.36.0/26", "10.251.36.64/26", "10.251.36.128/26",
  "10.251.38.0/26", "10.251.38.64/26", "10.251.38.128/26"]

  neu-uat-tis-subnet-name = ["corp-snet-neu-uat-tis-mgmt-private-01", "corp-snet-neu-uat-tis-mgmt-public-01", "corp-snet-neu-uat-tis-mgmt-db-01",
  "corp-snet-neu-uat-tis-mgmt-private-02", "corp-snet-neu-uat-tis-mgmt-public-02", "corp-snet-neu-uat-tis-mgmt-db-02"]

  neu-uat-tis-subnet = ["10.251.40.0/26", "10.251.40.64/26", "10.251.40.128/26",
  "10.251.42.0/26", "10.251.42.64/26", "10.251.42.128/26"]

  neu-uat-tas-subnet-name = ["corp-snet-neu-uat-tas-mgmt-private-01", "corp-snet-neu-uat-tas-mgmt-public-01", "corp-snet-neu-uat-tas-mgmt-db-01",
  "corp-snet-neu-uat-tas-mgmt-private-02", "corp-snet-neu-uat-tas-mgmt-public-02", "corp-snet-neu-uat-tas-mgmt-db-02"]

  neu-uat-tas-subnet = ["10.251.44.0/26", "10.251.44.64/26", "10.251.44.128/26",
  "10.251.46.0/26", "10.251.46.64/26", "10.251.46.128/26"]

  //EUS
  eus-prod-tis-subnet-name = ["corp-snet-eus-prod-tis-mgmt-private-01", "corp-snet-eus-prod-tis-mgmt-public-01", "corp-snet-eus-prod-tas-mgmt-db-01",
    "corp-snet-eus-prod-tis-mgmt-private-02", "corp-snet-eus-prod-tis-mgmt-public-02", "corp-snet-eus-prod-tas-mgmt-db-02",
    "corp-snet-eus-prod-tis-mgmt-private-03", "corp-snet-eus-prod-tis-mgmt-public-03", "corp-snet-eus-prod-tas-mgmt-db-03",
  "corp-snet-eus-prod-tis-mgmt-private-04", "corp-snet-eus-prod-tis-mgmt-public-04", "corp-snet-eus-prod-tas-mgmt-db-04"]

  eus-prod-tis-subnet = ["10.249.8.0/26", "10.249.8.64/26", "10.249.8.128/26",
    "10.249.10.0/26", "10.249.10.64/26", "10.249.10.128/26",
    "10.249.12.0/26", "10.249.12.64/26", "10.249.12.128/26",
  "10.249.14.0/26", "10.249.14.64/26", "10.249.14.128/26"]

  eus-prod-tas-subnet-name = ["corp-snet-eus-prod-tas-mgmt-private-01", "corp-snet-eus-prod-tas-mgmt-public-01", "corp-snet-eus-prod-tas-mgmt-db-01",
    "corp-snet-eus-prod-tas-mgmt-private-02", "corp-snet-eus-prod-tas-mgmt-public-02", "corp-snet-eus-prod-tas-mgmt-db-02",
    "corp-snet-eus-prod-tas-mgmt-private-03", "corp-snet-eus-prod-tas-mgmt-public-03", "corp-snet-eus-prod-tas-mgmt-db-03",
  "corp-snet-eus-prod-tas-mgmt-private-04", "corp-snet-eus-prod-tas-mgmt-public-04", "corp-snet-eus-prod-tas-mgmt-db-04"]


  eus-prod-tas-subnet = ["10.249.16.0/26", "10.249.16.64/26", "10.249.16.128/26",
    "10.249.18.0/26", "10.249.18.64/26", "10.249.18.128/26",
    "10.249.20.0/26", "10.249.20.64/26", "10.249.20.128/26",
  "10.249.22.0/26", "10.249.22.64/26", "10.249.22.128/26"]

  eus-dev-tis-subnet-name = ["corp-snet-eus-dev-tis-mgmt-private-01", "corp-snet-eus-dev-tis-mgmt-public-01", "corp-snet-eus-dev-tis-mgmt-db-01",
    "corp-snet-eus-dev-tis-mgmt-private-02", "corp-snet-eus-dev-tis-mgmt-public-02", "corp-snet-eus-dev-tis-mgmt-db-02",
    "corp-snet-eus-dev-tis-mgmt-private-03", "corp-snet-eus-dev-tis-mgmt-public-03", "corp-snet-eus-dev-tis-mgmt-db-03",
  "corp-snet-eus-dev-tis-mgmt-private-04", "corp-snet-eus-dev-tis-mgmt-public-04", "corp-snet-eus-dev-tis-mgmt-db-04"]


  eus-dev-tis-subnet = ["10.249.24.0/26", "10.249.24.64/26", "10.249.24.128/26",
    "10.249.26.0/26", "10.249.26.64/26", "10.249.26.128/26",
    "10.249.28.0/26", "10.249.28.64/26", "10.249.28.128/26",
  "10.249.30.0/26", "10.249.30.64/26", "10.249.30.128/26"]

  eus-dev-tas-subnet-name = ["corp-snet-eus-dev-tas-mgmt-private-01", "corp-snet-eus-dev-tas-mgmt-public-01", "corp-snet-eus-dev-tas-mgmt-db-01",
    "corp-snet-eus-dev-tas-mgmt-private-02", "corp-snet-eus-dev-tas-mgmt-public-02", "corp-snet-eus-dev-tas-mgmt-db-02",
    "corp-snet-eus-dev-tas-mgmt-private-03", "corp-snet-eus-dev-tas-mgmt-public-03", "corp-snet-eus-dev-tas-mgmt-db-03",
  "corp-snet-eus-dev-tas-mgmt-private-04", "corp-snet-eus-dev-tas-mgmt-public-04", "corp-snet-eus-dev-tas-mgmt-db-04"]



  eus-dev-tas-subnet = ["10.249.32.0/26", "10.249.32.64/26", "10.249.32.128/26",
    "10.249.34.0/26", "10.249.34.64/26", "10.249.34.128/26",
    "10.249.36.0/26", "10.249.36.64/26", "10.249.36.128/26",
  "10.249.38.0/26", "10.249.38.64/26", "10.249.38.128/26"]

  eus-uat-tis-subnet-name = ["corp-snet-eus-uat-tis-mgmt-private-01", "corp-snet-eus-uat-tis-mgmt-public-01", "corp-snet-eus-uat-tis-mgmt-db-01",
  "corp-snet-eus-uat-tis-mgmt-private-02", "corp-snet-eus-uat-tis-mgmt-public-02", "corp-snet-eus-uat-tis-mgmt-db-02"]

  eus-uat-tis-subnet = ["10.249.40.0/26", "10.249.40.64/26", "10.249.40.128/26",
  "10.249.42.0/26", "10.249.42.64/26", "10.249.42.128/26"]

  eus-uat-tas-subnet-name = ["corp-snet-eus-uat-tas-mgmt-private-01", "corp-snet-eus-uat-tas-mgmt-public-01", "corp-snet-eus-uat-tas-mgmt-db-01",
  "corp-snet-eus-uat-tas-mgmt-private-02", "corp-snet-eus-uat-tas-mgmt-public-02", "corp-snet-eus-uat-tas-mgmt-db-02"]

  eus-uat-tas-subnet = ["10.249.44.0/26", "10.249.44.64/26", "10.249.44.128/26",
  "10.249.46.0/26", "10.249.46.64/26", "10.249.46.128/26"]


  //WUS

  wus-prod-tis-subnet-name = ["corp-snet-wus-prod-tis-mgmt-private-01", "corp-snet-wus-prod-tis-mgmt-public-01", "corp-snet-wus-prod-tas-mgmt-db-01",
    "corp-snet-wus-prod-tis-mgmt-private-02", "corp-snet-wus-prod-tis-mgmt-public-02", "corp-snet-wus-prod-tas-mgmt-db-02",
    "corp-snet-wus-prod-tis-mgmt-private-03", "corp-snet-wus-prod-tis-mgmt-public-03", "corp-snet-wus-prod-tas-mgmt-db-03",
  "corp-snet-wus-prod-tis-mgmt-private-04", "corp-snet-wus-prod-tis-mgmt-public-04", "corp-snet-wus-prod-tas-mgmt-db-04"]

  wus-prod-tis-subnet = ["10.250.8.0/26", "10.250.8.64/26", "10.250.8.128/26",
    "10.250.10.0/26", "10.250.10.64/26", "10.250.10.128/26",
    "10.250.12.0/26", "10.250.12.64/26", "10.250.12.128/26",
  "10.250.14.0/26", "10.250.14.64/26", "10.250.14.128/26"]

  wus-prod-tas-subnet-name = ["corp-snet-wus-prod-tas-mgmt-private-01", "corp-snet-wus-prod-tas-mgmt-public-01", "corp-snet-wus-prod-tas-mgmt-db-01",
    "corp-snet-wus-prod-tas-mgmt-private-02", "corp-snet-wus-prod-tas-mgmt-public-02", "corp-snet-wus-prod-tas-mgmt-db-02",
    "corp-snet-wus-prod-tas-mgmt-private-03", "corp-snet-wus-prod-tas-mgmt-public-03", "corp-snet-wus-prod-tas-mgmt-db-03",
  "corp-snet-wus-prod-tas-mgmt-private-04", "corp-snet-wus-prod-tas-mgmt-public-04", "corp-snet-wus-prod-tas-mgmt-db-04"]


  wus-prod-tas-subnet = ["10.250.16.0/26", "10.250.16.64/26", "10.250.16.128/26",
    "10.250.18.0/26", "10.250.18.64/26", "10.250.18.128/26",
    "10.250.20.0/26", "10.250.20.64/26", "10.250.20.128/26",
  "10.250.22.0/26", "10.250.22.64/26", "10.250.22.128/26"]

  wus-dev-tis-subnet-name = ["corp-snet-wus-dev-tis-mgmt-private-01", "corp-snet-wus-dev-tis-mgmt-public-01", "corp-snet-wus-dev-tis-mgmt-db-01",
    "corp-snet-wus-dev-tis-mgmt-private-02", "corp-snet-wus-dev-tis-mgmt-public-02", "corp-snet-wus-dev-tis-mgmt-db-02",
    "corp-snet-wus-dev-tis-mgmt-private-03", "corp-snet-wus-dev-tis-mgmt-public-03", "corp-snet-wus-dev-tis-mgmt-db-03",
  "corp-snet-wus-dev-tis-mgmt-private-04", "corp-snet-wus-dev-tis-mgmt-public-04", "corp-snet-wus-dev-tis-mgmt-db-04"]


  wus-dev-tis-subnet = ["10.250.24.0/26", "10.250.24.64/26", "10.250.24.128/26",
    "10.250.26.0/26", "10.250.26.64/26", "10.250.26.128/26",
    "10.250.28.0/26", "10.250.28.64/26", "10.250.28.128/26",
  "10.250.30.0/26", "10.250.30.64/26", "10.250.30.128/26"]

  wus-dev-tas-subnet-name = ["corp-snet-wus-dev-tas-mgmt-private-01", "corp-snet-wus-dev-tas-mgmt-public-01", "corp-snet-wus-dev-tas-mgmt-db-01",
    "corp-snet-wus-dev-tas-mgmt-private-02", "corp-snet-wus-dev-tas-mgmt-public-02", "corp-snet-wus-dev-tas-mgmt-db-02",
    "corp-snet-wus-dev-tas-mgmt-private-03", "corp-snet-wus-dev-tas-mgmt-public-03", "corp-snet-wus-dev-tas-mgmt-db-03",
  "corp-snet-wus-dev-tas-mgmt-private-04", "corp-snet-wus-dev-tas-mgmt-public-04", "corp-snet-wus-dev-tas-mgmt-db-04"]



  wus-dev-tas-subnet = ["10.250.32.0/26", "10.250.32.64/26", "10.250.32.128/26",
    "10.250.34.0/26", "10.250.34.64/26", "10.250.34.128/26",
    "10.250.36.0/26", "10.250.36.64/26", "10.250.36.128/26",
  "10.250.38.0/26", "10.250.38.64/26", "10.250.38.128/26"]

  wus-uat-tis-subnet-name = ["corp-snet-wus-uat-tis-mgmt-private-01", "corp-snet-wus-uat-tis-mgmt-public-01", "corp-snet-wus-uat-tis-mgmt-db-01",
  "corp-snet-wus-uat-tis-mgmt-private-02", "corp-snet-wus-uat-tis-mgmt-public-02", "corp-snet-wus-uat-tis-mgmt-db-02"]

  wus-uat-tis-subnet = ["10.250.40.0/26", "10.250.40.64/26", "10.250.40.128/26",
  "10.250.42.0/26", "10.250.42.64/26", "10.250.42.128/26"]

  wus-uat-tas-subnet-name = ["corp-snet-wus-uat-tas-mgmt-private-01", "corp-snet-wus-uat-tas-mgmt-public-01", "corp-snet-wus-uat-tas-mgmt-db-01",
  "corp-snet-wus-uat-tas-mgmt-private-02", "corp-snet-wus-uat-tas-mgmt-public-02", "corp-snet-wus-uat-tas-mgmt-db-02"]

  wus-uat-tas-subnet = ["10.250.44.0/26", "10.250.44.64/26", "10.250.44.128/26",
  "10.250.46.0/26", "10.250.46.64/26", "10.250.46.128/26"]





}

locals {
  dns_zones = ["privatelink.blob.core.windows.net", "privatelink.database.windows.net", "privatelink.file.core.windows.net", "privatelink.vaultcore.azure.net"]
}




locals {
  vm-keys-ind = ["vm-key-ind-prod-01", "vm-key-ind-dev-01"]
  vm-keys-neu = ["vm-key-neu-prod-01", "vm-key-neu-dev-01"]
  vm-keys-eus = ["vm-key-eus-prod-01", "vm-key-eus-dev-01"]
  vm-keys-wus = ["vm-key-wus-prod-01", "vm-key-wus-dev-01"]
}

locals {
  //Regional Network and Landing Zones (TIS/TAS) tags

  prod_shared_network_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "veneetkumar.thakur@genpact.com"
    "Owner"               = "ajay.kumarp@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "Shared"
    "Stack"               = "Prod"
  }

  prod_tis_network_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "veneetkumar.thakur@genpact.com"
    "Owner"               = "ajay.kumarp@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "Shared"
    "Stack"               = "Prod"

  }


  prod_tas_network_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "veneetkumar.thakur@genpact.com"
    "Owner"               = "ajay.kumarp@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "Shared"
    "Stack"               = "Prod"

  }
  dev_shared_network_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "veneetkumar.thakur@genpact.com"
    "Owner"               = "ajay.kumarp@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "Shared"
    "Stack"               = "Dev"
  }

  dev_tis_network_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "veneetkumar.thakur@genpact.com"
    "Owner"               = "ajay.kumarp@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "tis-shared"
    "Stack"               = "Dev"
  }
  dev_tas_network_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "veneetkumar.thakur@genpact.com"
    "Owner"               = "ajay.kumarp@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "tas-shared"
    "Stack"               = "Dev"
  }
  uat_tis_network_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "veneetkumar.thakur@genpact.com"
    "Owner"               = "ajay.kumarp@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "tis-shared"
    "Stack"               = "UAT"
  }
  uat_tas_network_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "veneetkumar.thakur@genpact.com"
    "Owner"               = "ajay.kumarp@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "tas-shared"
    "Stack"               = "UAT"
  }

  vm_tags = {

    "Backup"              = "Daily"
    "Custom-AMI"          = "test"
    "Deployment Type"     = "test"
    "Exception"           = "test"
    "Instance Schedule"   = "test"
    "Name"                = "test"
    "OS Support"          = "test"
    "Patch Group"         = "test"
    "RI"                  = "test"
    "Role"                = "test"
    "ScheduleforDeletion" = "test"
    "Service Type"        = "test"
    "Support Cost"        = "test"
    "ProvisionedBy"       = "test"

  }

  location_ind_tag = {
    "Location" = "Central India"
  }

  location_eus_tag = {
    "Location" = "East US"

  }

  location_wus_tag = {
    "Location" = "West US"

  }

  location_neu_tag = {
    "Location" = "North Europe"
  }
}







locals {

  ind_dctags = {

    corp-rg-ind-prod-shared-identity-core-adc = {

      "Application Support" = "GenpactWintelL3SupportTeam@genpact.com"
      "Owner Supervisor"    = "vinay.goel@genpact.com"
      "Owner"               = "pavnesh.kumar@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }

    corp-rg-ind-prod-shared-identity-core-okta = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-ind-dev-shared-identity-core-adc = {
      "Application Support" = "GenpactWintelL3SupportTeam@genpact.com"
      "Owner Supervisor"    = "vinay.goel@genpact.com"
      "Owner"               = "pavnesh.kumar@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }
    corp-rg-ind-dev-shared-identity-core-okta = {
      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }

  }

  neu_dctags = {

    corp-rg-neu-prod-shared-identity-core-adc = {

      "Application Support" = "GenpactWintelL3SupportTeam@genpact.com"
      "Owner Supervisor"    = "vinay.goel@genpact.com"
      "Owner"               = "pavnesh.kumar@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }

    corp-rg-neu-prod-shared-identity-core-okta = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-neu-dev-shared-identity-core-adc = {
      "Application Support" = "GenpactWintelL3SupportTeam@genpact.com"
      "Owner Supervisor"    = "vinay.goel@genpact.com"
      "Owner"               = "pavnesh.kumar@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }
    corp-rg-neu-dev-shared-identity-core-okta = {
      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }

  }

  eus_dctags = {

    corp-rg-eus-prod-shared-identity-core-adc = {

      "Application Support" = "GenpactWintelL3SupportTeam@genpact.com"
      "Owner Supervisor"    = "vinay.goel@genpact.com"
      "Owner"               = "pavnesh.kumar@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }

    corp-rg-eus-prod-shared-identity-core-okta = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-eus-dev-shared-identity-core-adc = {
      "Application Support" = "GenpactWintelL3SupportTeam@genpact.com"
      "Owner Supervisor"    = "vinay.goel@genpact.com"
      "Owner"               = "pavnesh.kumar@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }
    corp-rg-eus-dev-shared-identity-core-okta = {
      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }

  }

  wus_dctags = {

    corp-rg-wus-prod-shared-identity-core-adc = {

      "Application Support" = "GenpactWintelL3SupportTeam@genpact.com"
      "Owner Supervisor"    = "vinay.goel@genpact.com"
      "Owner"               = "pavnesh.kumar@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }

    corp-rg-wus-prod-shared-identity-core-okta = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-wus-dev-shared-identity-core-adc = {
      "Application Support" = "GenpactWintelL3SupportTeam@genpact.com"
      "Owner Supervisor"    = "vinay.goel@genpact.com"
      "Owner"               = "pavnesh.kumar@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }
    corp-rg-wus-dev-shared-identity-core-okta = {
      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }

  }


}

locals {


  ind_zpa_tags = {


    corp-rg-ind-prod-shared-management-core-zpa = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"


    }

    corp-rg-ind-dev-shared-management-core-zpa = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"




    }
  }

  neu_zpa_tags = {

    corp-rg-neu-prod-shared-management-core-zpa = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"


    }

    corp-rg-neu-dev-shared-management-core-zpa = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"



    }
  }

  eus_zpa_tags = {

    corp-rg-eus-prod-shared-management-core-zpa = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"


    }

    corp-rg-eus-dev-shared-management-core-zpa = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"


    }
  }


  wus_zpa_tags = {


    corp-rg-wus-prod-shared-management-core-zpa = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"


    }

    corp-rg-wus-dev-shared-management-core-zpa = {

      "Application Support" = "GenpactOktaAdmins@genpactonline.onmicrosoft.com"
      "Owner Supervisor"    = "komal.narula@genpact.com"
      "Owner"               = "chandrasekhar.babu@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"

    }


  }

}


locals {

  ind_lmc_tags = {


    corp-rg-ind-prod-shared-management-core-lmc = {
      "Application Support" = "genpactnmgtoolsteam@genpact.com"
      "Owner Supervisor"    = "Steven.Zhang@genpact.com"
      "Owner"               = "venkataganeshbabu.k@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-ind-dev-shared-management-core-lmc = {
      "Application Support" = "genpactnmgtoolsteam@genpact.com"
      "Owner Supervisor"    = "Steven.Zhang@genpact.com"
      "Owner"               = "venkataganeshbabu.k@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }


  }


  neu_lmc_tags = {


    corp-rg-neu-prod-shared-management-core-lmc = {
      "Application Support" = "genpactnmgtoolsteam@genpact.com"
      "Owner Supervisor"    = "Steven.Zhang@genpact.com"
      "Owner"               = "venkataganeshbabu.k@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-neu-dev-shared-management-core-lmc = {
      "Application Support" = "genpactnmgtoolsteam@genpact.com"
      "Owner Supervisor"    = "Steven.Zhang@genpact.com"
      "Owner"               = "venkataganeshbabu.k@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }


  }



  eus_lmc_tags = {


    corp-rg-eus-prod-shared-management-core-lmc = {
      "Application Support" = "genpactnmgtoolsteam@genpact.com"
      "Owner Supervisor"    = "Steven.Zhang@genpact.com"
      "Owner"               = "venkataganeshbabu.k@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-eus-dev-shared-management-core-lmc = {
      "Application Support" = "genpactnmgtoolsteam@genpact.com"
      "Owner Supervisor"    = "Steven.Zhang@genpact.com"
      "Owner"               = "venkataganeshbabu.k@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }


  }



  wus_lmc_tags = {


    corp-rg-wus-prod-shared-management-core-lmc = {
      "Application Support" = "genpactnmgtoolsteam@genpact.com"
      "Owner Supervisor"    = "Steven.Zhang@genpact.com"
      "Owner"               = "venkataganeshbabu.k@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-wus-dev-shared-management-core-lmc = {
      "Application Support" = "genpactnmgtoolsteam@genpact.com"
      "Owner Supervisor"    = "Steven.Zhang@genpact.com"
      "Owner"               = "venkataganeshbabu.k@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }


  }
}


locals {


  ind_jmp_server_tags = {

    corp-rg-ind-prod-shared-management-core-jmp = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "Ankur.Singhal@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-ind-dev-shared-management-core-jmp = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "Ankur.Singhal@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }


  }

  neu_jmp_server_tags = {

    corp-rg-neu-prod-shared-management-core-jmp = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "Ankur.Singhal@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-neu-dev-shared-management-core-jmp = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "Ankur.Singhal@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }


  }



  eus_jmp_server_tags = {

    corp-rg-eus-prod-shared-management-core-jmp = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "Ankur.Singhal@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-eus-dev-shared-management-core-jmp = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "Ankur.Singhal@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }


  }



  wus_jmp_server_tags = {

    corp-rg-wus-prod-shared-management-core-jmp = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "Ankur.Singhal@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }
    corp-rg-wus-dev-shared-management-core-jmp = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "Ankur.Singhal@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }


  }

}


locals {



  ind_bootdiag_tags = {


    corp-rg-ind-prod-shared-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }

    corp-rg-ind-dev-shared-boot-diag = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }

    corp-rg-ind-prod-tas-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tas-shared"
      "Stack"               = "Prod"
    }

    corp-rg-ind-prod-tis-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tis-shared"
      "Stack"               = "Prod"
    }

    corp-rg-ind-dev-tas-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tas-shared"
      "Stack"               = "Dev"
    }

    corp-rg-ind-dev-tis-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tis-shared"
      "Stack"               = "Dev"
    }
  }



  neu_bootdiag_tags = {


    corp-rg-neu-prod-shared-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }

    corp-rg-neu-dev-shared-boot-diag = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }

    corp-rg-neu-prod-tas-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tas-shared"
      "Stack"               = "Prod"
    }

    corp-rg-neu-prod-tis-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tis-shared"
      "Stack"               = "Prod"
    }

    corp-rg-neu-dev-tas-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tas-shared"
      "Stack"               = "Dev"
    }

    corp-rg-neu-dev-tis-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tis-shared"
      "Stack"               = "Dev"
    }

  }


  eus_bootdiag_tags = {


    corp-rg-eus-prod-shared-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }

    corp-rg-eus-dev-shared-boot-diag = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }

    corp-rg-eus-prod-tas-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tas-shared"
      "Stack"               = "Prod"
    }

    corp-rg-eus-prod-tis-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tis-shared"
      "Stack"               = "Prod"
    }

    corp-rg-eus-dev-tas-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tas-shared"
      "Stack"               = "Dev"
    }

    corp-rg-eus-dev-tis-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tis-shared"
      "Stack"               = "Dev"
    }

  }




  wus_bootdiag_tags = {


    corp-rg-wus-prod-shared-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Prod"
    }

    corp-rg-wus-dev-shared-boot-diag = {

      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "shared"
      "Stack"               = "Dev"
    }

    corp-rg-wus-prod-tas-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tas-shared"
      "Stack"               = "Prod"
    }

    corp-rg-wus-prod-tis-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tis-shared"
      "Stack"               = "Prod"
    }

    corp-rg-wus-dev-tas-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tas-shared"
      "Stack"               = "Dev"
    }

    corp-rg-wus-dev-tis-boot-diag = {
      "Application Support" = "genpactcloudsupport@genpact.com"
      "Owner Supervisor"    = "santhosh.srihari@genpact.com"
      "Owner"               = "balaji.r@genpact.com"
      "Project Name"        = "Corporate"
      "Business Vertical"   = "CorpIT"
      "SDO Code"            = "TO BE DECIDED"
      "CC Code"             = "TO BE DECIDED"
      "Provisioning SR"     = "TO BE DECIDED"
      "PID"                 = "tis-shared"
      "Stack"               = "Dev"
    }
  }
}

locals {

  prod_log_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "santhosh.srihari@genpact.com"
    "Owner"               = "balaji.r@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "shared"
    "Stack"               = "Prod"
  }

  dev_log_tags = {
    "Application Support" = "genpactcloudsupport@genpact.com"
    "Owner Supervisor"    = "santhosh.srihari@genpact.com"
    "Owner"               = "balaji.r@genpact.com"
    "Project Name"        = "Corporate"
    "Business Vertical"   = "CorpIT"
    "SDO Code"            = "TO BE DECIDED"
    "CC Code"             = "TO BE DECIDED"
    "Provisioning SR"     = "TO BE DECIDED"
    "PID"                 = "shared"
    "Stack"               = "Dev"
  }



}

