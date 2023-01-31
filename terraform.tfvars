# Resource group create section

# Nonprod
subscription_id = "*****"

# Contributor access
contributor_id = [
    "****" # adm_groups
]

# Reader access
reader_id = []

# Role Assignment
role_assignment_id = [
    "******"
]

# Windows jumbox vm build section

# subscription id where the disk initilization script is located
subscription_id_a = "***********"

# subscription id where the log analytics workspace is located
# If VMs are being deployed in NonProd, Prod or PRD - set subscription_id_b to PRD subscription id
# If VMs are being deployed in STG - set subscription_id_b to STG subscription id
# If VMs are being deployed in DEV - set subscription_id_b to DEV subscription id
subscription_id_b = "**********"

# subscription id where the key vault that contain the localadmin credentials is located
subscription_id_c = "**********"

# service name descriptor for server
service_name = "**********"

# the number of vms's to deploy
instance_count = "1"

# resource group where the disk encryption vault is located
disk_encryption_key_vault_resource_group = "**********"

# resource group where the localadmin credentials vault is located
localadmin_key_vault_resource_group = "**********"

# localadmin creds vault name
localadmin_creds_key_vault = "ppppppp"

# AHUB license - Windows_Server or Windows_Client
license_type = "Windows_Server"

# managed disk type - for example - Standard_LRS, Premium_LRS
os_disk_type = "Premium_LRS"


# subnet where vm will be located
subnet = "appl2"

# ex. ABC1p for region 1 production resource
resource_prefix = "yyyyy"

# image publisher
image_publisher = "MicrosoftWindowsServer"

# image offer
image_offer = "WindowsServer"

# image sku
image_sku = "9999999"

# image version - for most deployment set to 'latest'
image_version = "latest"

# vm size
# vm_size = "Standard_A4_v2"
vm_size = "Standard_D4s_v3"

# do you want a data disk? - true or false
data_disk1 = "true"

# do you want a second data disk? - true or false
data_disk2 = "false"

# data disk 1 size
data_disk1_size = "256"

# data disk 2 size
data_disk2_size = "5"

# backup policy to associate vm to
backup_policy = "BackupPolicyB"

# connect to domain - true or false
connect_to_domain = "true"

# Do you want to encrypt disks
encrypt_disks = "false"

# storage account where the cse script located
cse_storage_account = "**********"

# cse storage account resource group
cse_rg = "**********"

# App role - This must be define in MicroSegmentation Console before using.  ********** should come up with the final list
microsegmentation_role = "jumphost"

# Application Name - This must be define in MicroSegmentation Console before using.  ********** should come up with the final list
microsegmentation_app_name = "**********"

# Application location - l1, l2, l3
microsegmentation_loc = "l2"

# Application Environment
microsegmentation_env = "dev"

# Managed Identity - input options - null, "SystemAssigned", "UserAssigned"
identity_type = null

# A list of user managed identity IDs.  Leave blank if 'type' is set to null or SystemAssigned"
identity_ids = []

# Linux VM info

# recovery vault that the vm will be backup to
recovery_vault = "**********"

# recovery vault resource group
recovery_vault_rg = "**********"

# App role - This must be define in Illumio Console before using.  ********** should come up with the final list
illumio_role = "agent"

# Application Name - This must be define in Illumio Console before using.  ********** should come up with the final list
illumio_application = "**********"

# Application location - l1, l2, l3
illumio_location = "l2"

# Application environment
illumio_environment = "nonprod"

data_disk = "true"

backup_server    = "false"

disable_password = "false"

virtual_network_name = "nonprod-vnet"

vnet_rg              = "**********"

custom_init_script   = "**********"

# Gallery/Image variables 
gallery_subscription_id     = "**********" # SharedServices
diagnostics_subscription_id = "**********" # SharedServices
custom_image_version  = "03.24.2477"

