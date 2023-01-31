# resource group section
variable "subscription_id" {
  type        = string
  description = "The subscription id to create the infrastructure"
}

variable "contributor_id" {
  type        = list
  description = "The id of the contributors for the resource groups"
}

variable "reader_id" {
  type        = list
  description = "The reader ids for the resource group"
}

variable "role_assignment_id" {
  type        = list
  description = "The reader ids for the resource group"
}

# Windows vm section - jumpbox server

variable "subscription_id_a" {
  type        = string
  description = "subscription id where the disk initilization script is located"
  default     = ""
}

variable "subscription_id_b" {
  type        = string
  description = "subscription id where the Log Analytics workspace is located"
  default     = ""
}

variable "subscription_id_c" {
  type        = string
  description = "subscription id where the key vault that contain the localadmin credentials is located"
  default     = ""
}

variable "service_name" {
  type        = string
  description = "service name descriptor for server"
  default     = ""
}


variable "instance_count" {
  type        = string
  description = "the number of vms's to deploy"
  default     = ""
}

variable "localadmin_key_vault_resource_group" {
  type        = string
  description = "resource group where the localadmin credentials vault is located"
  default     = ""
}

variable "disk_encryption_key_vault_resource_group" {
  type        = string
  description = "resource group where the disk encryption vault is located"
  default     = ""
}

variable "disk_encryption_key_vault" {
  type        = string
  description = "disk encryption vault name"
  default     = ""
}

variable "localadmin_creds_key_vault" {
  type        = string
  description = "localadmin creds vault name"
  default     = ""
}

variable "license_type" {
  type        = string
  description = "AHUB license - Windows_Server or Windows_Client"
  default     = ""
}

variable "os_disk_type" {
  type        = string
  description = "managed disk type - for example - Standard_LRS, Premium_LRS"
  default     = ""
}

variable "subnet" {
  type        = string
  description = "subnet where vm will be located"
  default     = ""
}

variable "resource_prefix" {
  type        = string
  description = "ex. ABC1p for region 1 production resource"
  default     = ""
}

variable "image_publisher" {
  type        = string
  description = "image publisher"
  default     = ""
}

variable "image_offer" {
  type        = string
  description = "image offer"
  default     = ""
}

variable "image_sku" {
  type        = string
  description = "image sku"
  default     = ""
}

variable "image_version" {
  type        = string
  description = "image version - for most deployment set to 'latest'"
  default     = ""
}

variable "vm_size" {
  type        = string
  description = "vm size"
  default     = ""
}

variable "data_disk1" {
  type        = string
  description = "do you want a data disk? - true or false"
  default     = ""
}

variable "data_disk2" {
  type        = string
  description = "do you want a second data disk? - true or false"
  default     = ""
}

variable "data_disk1_size" {
  type        = string
  description = "data disk 1 size"
  default     = ""
}

variable "data_disk2_size" {
  type        = string
  description = "data disk 2 size"
  default     = ""
}

variable "backup_policy" {
  type        = string
  description = "backup policy to associate vm to"
  default     = ""
}

variable "vm_insights" {
  type        = string
  description = "Dependency Agent for Insights"
  default     = ""
}

variable "connect_to_domain" {
  type        = string
  description = "connect to domain - true or false"
  default     = ""
}

variable "encrypt_disks" {
  type        = string
  description = "Do you want to encrypt disks"
  default     = ""
}

variable "cse_storage_account" {
  type        = string
  description = "storage account where the disk initilization script located"
  default     = ""
}

variable "cse_rg" {
  type        = string
  description = "resource group where the disk initilization script located"
  default     = ""
}

variable "microsegmentation_role" {
  type        = string
  description = "App role - This must be define in MicroSegmentation Console before using.  ********** should come up with the final list"
  default     = ""
}
variable "microsegmentation_app_name" {
  type        = string
  description = "Application Name - This must be define in MicroSegmentation Console before using.  ********** should come up with the final list"
  default     = ""
}
variable "microsegmentation_loc" {
  type        = string
  description = "Location - This must be define in MicroSegmentation Console before using.  ********** should come up with the final list"
  default     = ""
}

variable "microsegmentation_env" {
  type        = string
  description = "Environment - This must be define in MicroSegmentation Console before using.  ********** should come up with the final list"
  default     = ""
}

variable "identity_type" {
  type        = string
  description = "the type of managed identity to be used.  Input options - null, UserAssigned, SystemAssigned"
  default     = null
}

variable "identity_ids" {
  type        = list
  description = "a list of user managed identity IDs.  Leave blank if 'type' is set to null or SystemAssigned"
  default     = []
}

# Linux VM section

provider "azurerm" {
  subscription_id = "**********"
  alias           = "main"
  features {}
  
}

provider "azurerm" {
  subscription_id = "**********"
  alias           = "gallery"
  features {}
}

provider "azurerm" {
  subscription_id = "**********"
  alias           = "diagnostics"
  features {}
}

variable "data_disk" {
  type        = string
  description = "do you want a data disk? - true or false"
  default     = ""
}

variable "backup_server" {
  type = string
}

variable "recovery_vault" {
  type        = string
  description = "recovery vault that the vm will be backup to"
  default     = ""
}

variable "recovery_vault_rg" {
  type        = string
  description = "recovery vault resource group"
  default     = ""
}

variable "illumio_environment" {
  type        = string
  description = "Application Name - This must be define in Illumio Console before using.  ********** should come up with the final list"
  default     = ""
}

variable "illumio_role" {
  type        = string
  description = "App role - This must be define in Illumio Console before using.  ********** should come up with the final list"
  default     = ""
}

variable "illumio_application" {
  type        = string
  description = "Application Name - This must be define in Illumio Console before using.  ********** should come up with the final list"
  default     = ""
}
variable "illumio_location" {
  type        = string
  description = "Application Name - This must be define in Illumio Console before using.  ********** should come up with the final list"
  default     = ""
}

variable "backup_policy_id" {
  type    = string
  default = ""
}


variable "custom_image_version" {
  type = string
}

variable "virtual_network_name" {
  type        = string
  description = "The vnet of where the application should be deployed"
}

variable "vnet_rg" {
  type        = string
  description = "The vnet rg of where the application should be deployed"
}

variable "disable_password" {
  type = string
}

variable "diagnostics_subscription_id" {
  type = string
}
variable "gallery_subscription_id" {
  type = string
}

variable "custom_init_script" {
  type        = string
  description = "Base 64 encoded script "
  default     = ""
}

