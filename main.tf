resource "ibm_is_lb" "loadbalancer" {
  count           = var.create_load_balancer ? 1 : 0

  name            = var.name
  subnets         = var.subnets
  type            = var.type != null ? var.type : "public"
  security_groups = (var.security_groups != null ? var.security_groups : [])
  profile         = (var.profile != null && var.logging == null ? var.profile : null)
  logging         = (var.logging != null && var.profile == null ? var.logging : false)
  resource_group  = var.resource_group_id
  tags            = (var.tags != null ? var.tags : [])
}

data "ibm_is_lb" "loadbalancer" {
  name = var.name
}