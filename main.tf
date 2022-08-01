# aws
provider "aws" {
  profile = "devops"
  region  = "eu-central-1"
}

# vpc
resource "aws_vpc" "vpc_devops" {
  cidr_block           = "10.1.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "teccle-vpc"
  }
}

# public subnet
resource "aws_subnet" "subnet_public_devops" {
  vpc_id                  = aws_vpc.vpc_devops.id
  cidr_block              = "10.1.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "eu-central-1a"
  tags = {
    Name = "teccle-subnet"
  }
}

output "vpc" {
  description = "vpc id"
  value       = aws_vpc.vpc_devops.id
}

