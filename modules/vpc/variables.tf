#modules/vpc/variables.tf

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type = string
}
variable "vpc_name" {
  description = "The name of the VPC"
  type = string
}
variable "subnet_a_cidr" {
  description = "CIDR block for Subnet A"
  type = string
}
variable "subnet_b_cidr" {
  description = "CIDR block for Subnet B"
  type = string
}
variable "availability_zone" {
  description = "The availability zone"
  type = string
}
