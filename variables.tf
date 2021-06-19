variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud api token"
}

variable "region" {
  type        = string
  description = "Geographic location of the resource (e.g. us-south, us-east)"
  default = "au-syd"
}

variable "provision" {
  type        = bool
  description = "set true to create, false to skip"
  default     = true
}

variable "name" {
  type        = string
  description = "vpc load balancer name"
  default     = ""
}

variable "type" {
  description = "nlb type: public/private"
  type        = string
  default     = "private"
}

variable "subnets" {
  description = "Load Balancer subnets list"
  type        = list(string)
}

variable "profile" {
  description = "The profile to use for this load balancer. Conflicts with 'logging'"
  type        = string
  default     = null
}

variable "resource_group_id" {
  description = "Resource group ID"
  type        = string
}

variable "tags" {
  description = "List of Tags for the Load Balancer"
  type        = list(string)
  default     = []
}

variable "logging" {
  description = "List of Tags for the Load Balancer"
  type        = list(string)
  default     = []
}

variable "security_groups" {
  description = "Load Balancer securitygroups list"
  type        = list(string)
  default     = []
}
