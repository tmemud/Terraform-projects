terraform {
  required_version = "0.12.31"

   backend "azurerm" {
    storage_account_name = "****"
    container_name       = "****"
    key                  = "****"
  }
  required_providers {

    azurerm = "2.85"

  }
}

provider "azurerm" {
  # Nonprod subscription
  subscription_id = var.subscription_id
  features {}
}
provider "azurerm" {
  # subscription id where the disk initilization script is located
  alias           = "a"
  subscription_id = var.subscription_id_a
  features {}
}

provider "azurerm" {
  # subscription id where the Log Analytics workspace is located
  alias           = "b"
  subscription_id = var.subscription_id_b
  features {}
}

provider "azurerm" {
  # subscription id where the key vault that contain the localadmin credentials is located
  alias           = "c"
  subscription_id = var.subscription_id_c
  features {}
}
locals {
  resource_group_name = "****"
  business_unit       = ""
  location            = "Eastzone"

  subscription_id = var.subscription_id
}
module "createWindowsVM1" {
  source                                   = "git:*****"
  subscription_id                          = var.subscription_id
  subscription_id_a                        = var.subscription_id_a
  subscription_id_b                        = var.subscription_id_b
  subscription_id_c                        = var.subscription_id_c
  resource_group_name                      = "iiiii"
  service_name                             = "uuuu"
  instance_count                           = "1"
  localadmin_key_vault_resource_group      = var.localadmin_key_vault_resource_group
  disk_encryption_key_vault_resource_group = var.disk_encryption_key_vault_resource_group
  localadmin_creds_key_vault               = var.localadmin_creds_key_vault
  license_type                             = var.license_type
  os_disk_type                             = var.os_disk_type
  location                                 = "Eastzone"
  subnet                                   = var.subnet
  resource_prefix                          = var.resource_prefix
  image_publisher                          = var.image_publisher
  image_offer                              = var.image_offer
  image_sku                                = var.image_sku
  image_version                            = var.image_version
  vm_size                                  = "Standard_DS2_v2"
  encrypt_disks                            = var.encrypt_disks
  data_disk1                               = "true"
  data_disk2                               = "true"
  data_disk1_size                          = "512"
  data_disk2_size                          = "512"
  backup_policy                            = var.backup_policy
  connect_to_domain                        = var.connect_to_domain
  cse_storage_account                      = var.cse_storage_account
  cse_rg                                   = var.cse_rg
  vm_business_unit                         = local.business_unit
  identity_type                            = var.identity_type
  identity_ids                             = var.identity_ids
  providers = {
    azurerm.a = azurerm.a
    azurerm.b = azurerm.b
    azurerm.c = azurerm.c
  }
}
