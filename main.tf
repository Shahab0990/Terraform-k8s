resource "aws_ecr_repository" "uber_clone" {
  name = var.ecr_repository_name

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "AES256"
  }

  tags = {
    Name = "Uber Clone ECR"
  }
}

module "vpc" {
  source         = "./modules/vpc"                # This tells Terraform where to find the module
  vpc_cidr       = "10.0.0.0/16"                  # This is the CIDR block for the VPC
  public_subnets = ["10.0.1.0/24", "10.0.2.0/24"] # These are the CIDR blocks for the public subnets
}

module "eks" {
  source           = "./modules/eks"
  cluster_name     = "uber-clone-cluster"
  cluster_role_arn = module.iam.eks_cluster_role_arn
  node_role_arn    = module.iam.eks_node_role_arn
  subnet_ids       = module.vpc.public_subnet
}
module "iam" {
  source = "./modules/iam"
}

