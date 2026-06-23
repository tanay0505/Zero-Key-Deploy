output "alb_arn" {
  value       = aws_lb.main.arn
  description = "ALB ARN"
}

output "alb_dns_name" {
  value       = aws_lb.main.dns_name
  description = "ALB DNS name"
}

output "target_group_arn" {
  value       = aws_lb_target_group.main.arn
  description = "Target group ARN"
}
