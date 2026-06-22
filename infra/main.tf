module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.aws_azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = var.instance_name

  instance_type = var.instance_type
  key_name      = var.key_name
  monitoring    = var.enable_monitoring
  subnet_id     = var.subnet_id

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}