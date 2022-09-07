module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "projetc-iac-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets       = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets      = ["10.0.11.0/24", "10.0.12.0/24"]
  database_subnets     = ["10.0.21.0/24", "10.0.22.0/24"]

  enable_nat_gateway = true
  single_nat_gateway = false
  one_nat_gateway_per_az = true

  tags = {
    Terraform = "true"
    Environment = "PRD"
    Name = "projetc-iac"
  }
}
