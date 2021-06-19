resource "ibm_is_lb" "lbs" {
  count           = (var.provision ? 1 : 0) 
  name            = var.name
  subnets         = var.subnets
  type            = var.type != null ? var.type : "public"
  security_groups = (var.security_groups != null ? var.security_groups : [])
  profile         = (var.profile != null && var.logging == null ? var.profile : null)
  resource_group  = var.resource_group_id
  tags            = (var.tags != null ? var.tags : [])
}