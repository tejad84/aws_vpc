########################################
# Required Variables
########################################
# variable "application" {
#   type = string
# }
# variable "workload" {
#   type = string
# }
# variable "environment" {
#   type = string
# }

########################################
# Optional Variables
########################################
variable "cidr_block" {
  default = null
  type    = string
}
variable "instance_tenancy" {
  default = null
  type    = string
}
variable "ipv4_ipam_pool_id" {
  default = null
  type    = string
}
variable "ipv4_netmask_length" {
  default = null
  type    = number
}
variable "ipv6_cidr_block" {
  default = null
  type    = string
}
variable "ipv6_ipam_pool_id" {
  default = null
  type    = string
}
variable "ipv6_netmask_length" {
  default = null
  type    = number
}
variable "enable_dns_support" {
  default = null
  type    = bool
}
variable "enable_dns_hostnames" {
  default = null
  type    = bool
}
variable "enable_classiclink" {
  default = null
  type    = bool
}
variable "enable_classiclink_dns_support" {
  default = null
  type    = bool
}
variable "assign_generated_ipv6_cidr_block" {
  default = null
  type    = bool
}
variable "is_bcdr" {
  default = false
  type    = bool
}
variable "tags" {
  default = null
  type    = any
}
