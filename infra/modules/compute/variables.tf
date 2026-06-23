variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ec2_security_group_id" {
  description = "EC2 security group ID"
  type        = string
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
  type        = list(string)
}

variable "target_group_arn" {
  description = "Target group ARN"
  type        = string
}

variable "user_data_file_path" {
  description = "Path to user data script"
  type        = string
}

variable "min_size" {
  description = "Minimum size of ASG"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum size of ASG"
  type        = number
  default     = 2
}

variable "desired_capacity" {
  description = "Desired capacity of ASG"
  type        = number
  default     = 1
}
