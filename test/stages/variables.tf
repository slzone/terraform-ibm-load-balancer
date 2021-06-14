variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud api token"
}

variable "region" {
  type        = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
  default     = "us-south"
}

variable "name_prefix" {
  type        = string
  description = "The name_prefix used to build the name if one is not provided. If used the name will be `{name_prefix}-{label}`"
  default     = ""
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "slz-rg"
}

variable "resource_group_provision" {
  type        = bool
  description = "Flag indicating that the resource group should be created"
  default     = false
}

variable "vpc_name" {
  type        = string
  description = "The name of the vpc instance"
  default     = "vpc"
}

variable "vpc_provision" {
  type        = bool
  description = "Flag indicating that the instance should be provisioned. If false then an existing instance will be looked up"
  default     = true
}

variable "vpc_address_prefix_count" {
  type        = number
  description = "The number of ipv4_cidr_blocks"
  default     = 0
}

variable "vpc_address_prefixes" {
  type        = string
  description = "List of ipv4 cidr blocks for the address prefixes (e.g. ['10.10.10.0/24']). If you are providing cidr blocks then a value must be provided for each of the subnets. If you don't provide cidr blocks for each of the subnets then values will be generated using the {ipv4_address_count} value."
  default     = "[]"
}

variable "subnets__count" {
  type        = number
  description = "The number of subnets that should be provisioned"
  default     = 3
} 

variable "subnets_label" {
  type        = string
  description = "Label for the subnets created"
  default     = ""
}

variable "subnets_zone_offset" {
  type        = number
  description = "The offset for the zone where the subnet should be created. The default offset is 0 which means the first subnet should be created in zone xxx-1"
  default     = 0
}

variable "subnets_ipv4_cidr_blocks" {
  type        = string
  description = "List of ipv4 cidr blocks for the subnets that will be created (e.g. ['10.10.10.0/24']). If you are providing cidr blocks then a value must be provided for each of the subnets. If you don't provide cidr blocks for each of the subnets then values will be generated using the {ipv4_address_count} value."
  default     = "[]"
}

variable "subnets_ipv4_address_count" {
  type        = number
  description = "The size of the ipv4 cidr block that should be allocated to the subnet. If {ipv4_cidr_blocks} are provided then this value is ignored."
  default     = 256
}

variable "subnets_provision" {
  type        = bool
  description = "Flag indicating that the subnet should be provisioned. If 'false' then the subnet will be looked up."
  default     = true
}

variable "subnets_acl_rules" {
  type        = string
  description = "List of rules to set on the subnet access control list"
  default     = "[]"
}

variable "create_load_balancer" {
  description = "set true to create, false to skip"
  type        = bool
  default     = true
}

variable "name" {
  type        = string
  description = "The name of load balancer"
  default     = "loadbalancer"
}

variable "subnets" {
  description = "Load Balancer subnets list"
  type        = list(string)
  default     = []
}

variable "type" {
  description = "nlb type: public/private"
  type        = string
  default     = "private"
}

variable "security_groups" {
  type        = list(string)
  description = "security group name"
  default     = []
}

variable "resource_group_id" {
  description = "Resource group ID"
  type        = string
  default     = "slz-rg"
}

variable "label" {
  type        = string
  description = "Label for the subnets created"
  default     = ""
}

variable "_count" {
  type        = number
  description = "The number of subnets that should be provisioned"
  default     = 3
}

variable "profile" {
  description = "The profile to use for this load balancer. Conflicts with 'logging'"
  type        = string
  default     = null
}

variable "logging" {
  description = "Logging of Load Balancer. Conflicts with 'profile'"
  type        = bool
  default     = null
}

variable "tags" {
  type        = list(string)
  description = "List of Tags for the Load Balancer"
  default     = []
}
