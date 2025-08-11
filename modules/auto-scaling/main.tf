resource "aws_launch_configuration" "asg_launch_config" {
  name = var.name
  image_id = var.image_id
  instance_type = var.instance_type
  security_groups = var.security_group_ids

  lifecycle {
    create_before_destroy = true
  }
}
resource "aws_autoscaling_group" "asg" {
  desired_capacity = var.desired_capacity
  max_size = var.max_size
  min_size = var.min_size
  vpc_zone_identifier = aws_launch_configuration.asg_launch_config.id

  tags = [
    {
    key = "Name"
    value = var.name
    propagate_at_launch = true
    }
  ]
}
