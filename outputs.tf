# output "name" { #The name of the VPC
#     value = aws_vpc.vpc.name
# }
output "arn" { #Amazon Resource Name (ARN) of VPC
    value = aws_vpc.vpc.arn
}
output "id" { #The ID of the VPC
    value = aws_vpc.vpc.id
}
output "instance_tenancy" { #Tenancy of instances spin up within VPC.
    value = aws_vpc.vpc.instance_tenancy
}
output "enable_dns_support" { #Whether or not the VPC has DNS support
    value = aws_vpc.vpc.enable_dns_support
}
output "enable_dns_hostnames" { #Whether or not the VPC has DNS hostname support
    value = aws_vpc.vpc.enable_dns_hostnames
}
output "enable_classiclink" { #Whether or not the VPC has Classiclink enabled
    value = aws_vpc.vpc.enable_classiclink
}
output "main_route_table_id" { #The ID of the main route table associated with this VPC. Note that you can change a VPC's main route table by using an aws_main_route_table_association.
    value = aws_vpc.vpc.main_route_table_id
}
output "default_network_acl_id" { #The ID of the network ACL created by default on VPC creation
    value = aws_vpc.vpc.default_network_acl_id
}
output "default_security_group_id" { #The ID of the security group created by default on VPC creation
    value = aws_vpc.vpc.default_security_group_id
}
output "default_route_table_id" { #The ID of the route table created by default on VPC creation
    value = aws_vpc.vpc.default_route_table_id
}
output "ipv6_association_id" { #The association ID for the IPv6 CIDR block.
    value = aws_vpc.vpc.ipv6_association_id
}
output "owner_id" { #The ID of the AWS account that owns the VPC.
    value = aws_vpc.vpc.owner_id
}
output "tags_all" { #A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
    value = aws_vpc.vpc.tags_all
}