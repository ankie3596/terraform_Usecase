output "asg_id" {
  value = aws_autoscaling_group.asg.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}
