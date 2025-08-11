variable "name" {
  description = "The name of the Auto Scaling Group"
  type = string
}

variable "image_id" {
  description = "The AMI ID for the instance"
  type = string
}

variable "instance_type" {
  description = "The EC2 instance type"
  type = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type = list(string)
}

variable "subnet_ids" {
  description = "List of subnet IDs for the Auto Scaling Group"
  type = list(string)
}

variable "desired_capacity" {
  description = "The desired number of instances"
  type = number
}

variable "max_size" {
  description = "The maximum number of instances"
  type = number
}

variable " min_size" {
  description = "The minimum number of instances"
  type = number
}
