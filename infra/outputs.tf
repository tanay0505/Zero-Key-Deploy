output "alb_dns" {
  value       = module.alb.alb_dns_name
  description = "Open this in your browser"
}

output "vpc_id" {
  value       = module.networking.vpc_id
  description = "VPC ID"
}

output "public_subnet_ids" {
  value       = module.networking.public_subnet_ids
  description = "Public subnet IDs (ALB)"
}

output "private_subnet_ids" {
  value       = module.networking.private_subnet_ids
  description = "Private subnet IDs (EC2 instances)"
}

output "nat_gateway_id" {
  value       = module.networking.nat_gateway_id
  description = "NAT Gateway ID"
}

output "asg_name" {
  value       = module.compute.asg_name
  description = "Auto Scaling Group name"
}

output "ec2_iam_role_name" {
  value       = module.compute.iam_role_name
  description = "IAM Role name attached to EC2 instances"
}

output "ec2_instance_profile_arn" {
  value       = module.compute.instance_profile_arn
  description = "IAM Instance Profile ARN attached to EC2 instances"
}