
resource "aws_vpc" "vpc" {
  cidr_block                       = var.cidr_block                       #(Optional) The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using ipv4_netmask_length.
  instance_tenancy                 = var.instance_tenancy                 #(Optional) A tenancy option for instances launched into the VPC. Default is default, which makes your instances shared on the host. Using either of the other options (dedicated or host) costs at least $2/hr.
  ipv4_ipam_pool_id                = var.ipv4_ipam_pool_id                #(Optional) The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  ipv4_netmask_length              = var.ipv4_netmask_length              #(Optional) The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a ipv4_ipam_pool_id.
  ipv6_cidr_block                  = var.ipv6_cidr_block                  #(Optional) IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using ipv6_netmask_length.
  ipv6_ipam_pool_id                = var.ipv6_ipam_pool_id                #(Optional) IPAM Pool ID for a IPv6 pool. Conflicts with assign_generated_ipv6_cidr_block.
  ipv6_netmask_length              = var.ipv6_netmask_length              #(Optional) Netmask length to request from IPAM Pool. Conflicts with ipv6_cidr_block. This can be omitted if IPAM pool as a allocation_default_netmask_length set. Valid values: 56.
  enable_dns_support               = var.enable_dns_support               #(Optional) boolean flag to enable/disable DNS support in the VPC. Defaults true.
  enable_dns_hostnames             = var.enable_dns_hostnames             #(Optional) A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.
  enable_classiclink               = var.enable_classiclink               #(Optional) A boolean flag to enable/disable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic. See the ClassicLink documentation for more information. Defaults false.
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support   #(Optional) A boolean flag to enable/disable ClassicLink DNS Support for the VPC. Only valid in regions and accounts that support EC2 Classic.
  assign_generated_ipv6_cidr_block = var.assign_generated_ipv6_cidr_block #(Optional) Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is false. Conflicts with ipv6_ipam_pool_id
  tags                             = var.tags                             #(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present,

}
