variable "name" {
  description = "The name of the security group"
  type = string
}
variable "description" {
  description = "Description of the security group"
  type = string
}
variable "vpc_id" {
  description = "The ID of the VPC"
  type = string
}
variable "ingress_from_port" {
  description = "The starting point of ingress"
  type = number
}

variable "ingress_to_port" {
  description = "The ending point of ingress"
  type = number
}

variable "ingress_protocol" {
  description = "The protocol of ingress"
  type = string
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks allowed for ingress"
  type = list(string)
}
variable "egress_from_port" {
  description = "The starting point of egress"
  type = number
}

variable "egress_to_port" {
  description = "The ending point of egress"
  type = number
}

variable "egress_protocol" {
  description = "The protocol of egress"
  type = string
}

variable "egress_cidr_blocks" {
  description = "The CIDR blocks allowed for egress"
  type = list(string)
}
