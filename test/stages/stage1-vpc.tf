module "vpc" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-vpc?ref=v1.11.3"

  resource_group_id    = module.resource_group.id
  resource_group_name  = module.resource_group.name
  region               = var.region
  name                 = var.vpc_name
  name_prefix          = var.name_prefix
  ibmcloud_api_key     = var.ibmcloud_api_key
  provision            = var.vpc_provision
  address_prefix_count = var.vpc_address_prefix_count
  address_prefixes     = var.vpc_address_prefixes == null ? null : jsondecode(var.vpc_address_prefixes)
}