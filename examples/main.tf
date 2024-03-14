# A example implementation of the module

provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "../"
  
  vpc_cidr_block = "10.0.0.0/16"
  
  public_subnet_cidr_blocks = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  
  private_subnet_cidr_blocks = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  
  region = "us-west-2"
  
  availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
}
