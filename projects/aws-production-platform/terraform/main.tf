terraform {
  required_version = ">= 1.6.0, < 2.0.0"
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./modules/network"
  name   = var.name
  vpc_cidr = var.vpc_cidr
}

module "compute" {
  source = "./modules/compute"
  name = var.name
  vpc_id = module.network.vpc_id
  private_subnet_ids = module.network.private_subnet_ids
}

module "database" {
  source = "./modules/database"
  name = var.name
  vpc_id = module.network.vpc_id
  subnet_ids = module.network.private_subnet_ids
}
