terraform {
  backend "s3" {
    bucket         = "ada-challenge-terraform-state-bucket"
    key            = "terraform/state.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr           = "10.0.0.0/16"
  private_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
}



module "eks" {
  source          = "./modules/eks"
  cluster_name    = "ada-challenge-eks"
  cluster_version = "1.26"
  subnet_ids      = module.vpc.private_subnets
  vpc_id          = module.vpc.vpc_id

  eks_managed_node_groups = {
    eks_nodes = {
      desired_capacity = 3
      max_capacity     = 5
      min_capacity     = 1
      instance_types   = ["t3.medium"]
    }
  }

  tags = {
    Environment = "dev"
    Terraform   = "true"
  }
}


module "rds" {
  source = "./modules/rds"

  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets

  db_name     = var.db_name
  db_user     = var.db_user
  db_password = var.db_password
  db_engine   = "postgres"
  db_instance_class = "db.t3.micro"

  backend_cidr_block = var.backend_cidr_block
}




