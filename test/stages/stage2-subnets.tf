module "subnets" {
  source = "github.com/cloud-native-toolkit/terraform-ibm-vpc-subnets?ref=v1.6.2"

  resource_group_id  = module.resource_group.id
  vpc_name           = module.vpc.name
  region             = var.region
  ibmcloud_api_key   = var.ibmcloud_api_key
  _count             = var.subnets__count
  label              = var.subnets_label
  zone_offset        = var.subnets_zone_offset
  ipv4_cidr_blocks   = var.subnets_ipv4_cidr_blocks == null ? null : jsondecode(var.subnets_ipv4_cidr_blocks)
  ipv4_address_count = var.subnets_ipv4_address_count
  provision          = var.subnets_provision
  acl_rules          = var.subnets_acl_rules == null ? null : jsondecode(var.subnets_acl_rules)
}