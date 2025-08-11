provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
  vpc_name = "my-vpc"
  subnet_a_cidr = "10.0.0.0/24"
  subnet_b_cidr = "10.0.0.0/24"
  availability_zone = "us-west-2a"
}

module "security_group" {
  source = "./modules/security-group"
  name = "web-sg"
  description = "Web Security Group"
  vpc_id = module.vpc.vpc_id
/*  
  ingress_from_port = 80
  ingress_to_port = 80
  ingress_protocol = "tcp"
  ingress_cidr_blocks = "[0.0.0.0/0]"
  egress_from_port = 0
  egress_to_port = 0
  egress_protocol = "-1"
  egress_cidr_protocol = ["0.0.0.0/0"]
*/
}

module "asg" {
  source = "./modules/auto-scaling"
  name = "my-asg"
  image_id = "ami-0abcdef1234567890"
  instance_type = "t2.micro"
  desired_capacity = 2
  max_size = 3
  min_size = 1
  subnet_ids = module.vpc.public_subnet_ids
  security_group_ids = [module.sg.security_group_id]
}
