output "launch_template_id" {
  value       = aws_launch_template.main.id
  description = "Launch template ID"
}

output "asg_name" {
  value       = aws_autoscaling_group.main.name
  description = "Auto Scaling Group name"
}

output "asg_arn" {
  value       = aws_autoscaling_group.main.arn
  description = "Auto Scaling Group ARN"
}

output "iam_role_name" {
  value       = aws_iam_role.ec2.name
  description = "Name of the IAM role attached to EC2 instances"
}

output "instance_profile_arn" {
  value       = aws_iam_instance_profile.ec2.arn
  description = "ARN of the IAM instance profile attached to EC2 instances"
}
