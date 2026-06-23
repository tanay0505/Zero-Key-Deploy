# ── Networking Module ─────────────────────────────────
module "networking" {
  source = "./modules/networking"

  project_name        = var.project_name
  environment         = var.environment
  vpc_cidr            = var.vpc_cidr
  public_subnet_count = var.public_subnet_count
}

# ── Security Module ────────────────────────────────────
module "security" {
  source = "./modules/security"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.networking.vpc_id
}

# ── ALB Module ─────────────────────────────────────────
module "alb" {
  source = "./modules/alb"

  project_name          = var.project_name
  environment           = var.environment
  vpc_id                = module.networking.vpc_id
  public_subnet_ids     = module.networking.public_subnet_ids
  alb_security_group_id = module.security.alb_security_group_id
  target_port           = 80
  health_check_path     = "/"
}

# ── Compute Module ─────────────────────────────────────
module "compute" {
  source = "./modules/compute"

  project_name          = var.project_name
  environment           = var.environment
  instance_type         = var.instance_type
  ec2_security_group_id = module.security.ec2_security_group_id
  private_subnet_ids    = module.networking.private_subnet_ids
  target_group_arn      = module.alb.target_group_arn
  user_data_file_path   = "${path.module}/user-data.sh"
  min_size              = var.min_size
  max_size              = var.max_size
  desired_capacity      = var.desired_capacity
}