# outputs.tf

output "vpc_id" {
  description = "The ID of the VPC created by this module."
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "List of IDs of the public subnets."
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "List of IDs of the private subnets."
  value       = module.vpc.private_subnet_ids
}

output "public_subnet_cidr_blocks" {
  description = "List of CIDR blocks of the public subnets."
  value       = module.vpc.public_subnet_cidr_blocks
}

output "private_subnet_cidr_blocks" {
  description = "List of CIDR blocks of the private subnets."
  value       = module.vpc.private_subnet_cidr_blocks
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway."
  value       = module.vpc.internet_gateway_id
}

output "nat_gateway_ids" {
  description = "List of IDs of the NAT Gateways."
  value       = module.vpc.nat_gateway_ids
}
