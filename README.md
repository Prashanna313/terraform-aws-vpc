# Terraform AWS VPC Module

This Terraform module creates an AWS Virtual Private Cloud (VPC) along with public and private subnets, Internet Gateway, NAT Gateway, and relevant route tables.

## Usage

```hcl
provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "./"
  
  vpc_cidr_block = "10.0.0.0/16"
  
  public_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  
  private_subnet_cidr_blocks = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  
  region = "us-west-2"
  
  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
}
```
## Inputs
| Name                      | Description                                               | Type         | Default | Required |
|---------------------------|-----------------------------------------------------------|--------------|---------|----------|
| vpc_cidr_block            | CIDR block for the VPC                                    | string       |         | Yes      |
| public_subnet_cidr_blocks | CIDR blocks for the public subnets                        | list(string) |         | Yes      |
| private_subnet_cidr_blocks| CIDR blocks for the private subnets                       | list(string) |         | Yes      |
| region                    | AWS region                                                | string       |         | Yes      |
| availability_zones        | List of availability zones in the region                 | list(string) |         | Yes      |

## Outputs
| Name                          | Description                                       |
|-------------------------------|---------------------------------------------------|
| vpc_id                        | The ID of the VPC created by this module.        |
| public_subnet_ids             | List of IDs of the public subnets.               |
| private_subnet_ids            | List of IDs of the private subnets.              |
| public_subnet_cidr_blocks     | List of CIDR blocks of the public subnets.       |
| private_subnet_cidr_blocks    | List of CIDR blocks of the private subnets.      |
| internet_gateway_id           | The ID of the Internet Gateway.                  |
| nat_gateway_ids               | List of IDs of the NAT Gateways.                 |
