module "lbs" {
  source = "./module"

  provision         = var.create_load_balancer
  name              = var.name
  subnets           = "${module.subnets.subnets.*.id}"
  resource_group_id = module.resource_group.id
  security_groups   = var.security_groups
  type              = var.type
  profile           = var.profile
  tags              = var.tags
}
