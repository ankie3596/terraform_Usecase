resource "aws_vpc" "main" {
  cidr_block = var.cidr_block 
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet_a" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_a_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet-a"
  }
}

resource "aws_subnet" "subnet_b" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_b_cidr
  availability_zone = var.availability_zone
  map_public_ip_on_launch = true
  tags = {
    Name= "subnet-b"
  }
}
