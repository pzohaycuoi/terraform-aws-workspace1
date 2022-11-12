terraform {
  cloud {
    organization = "nambeotest"
    hostname = "app.terraform.io"

    workspaces {
      name = "terraform-aws-workspace1"
    }
  }

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.39.0"
    }
  }

}

provider "aws" {
  region = var.region
  
}

module "nambeovpc" {
  source = "app.terraform.io/nambeotest/nambeovpc/aws"
  region = var.region
  public_subnet_range = var.public_subnet_range
  vpc_name = var.vpc_name
  vpc_cidr = var.vpc_cidr
  vpc_azs = var.vpc_azs
  project_name = var.project_name
}