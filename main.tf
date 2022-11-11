terraform {
  cloud {
    organization = "nambeotest"
    hostname = "app.terraform.io"

    workspaces {
      name = "terraform-aws-workspace1"
    }
  }
}

provider "aws" {
  region = var.region
}

module "nambeoec2" {
  source = "app.terraform.io/nambeotest/nambeoec2/aws"
  subnet = nambeovpc.private_subnets
}

module "namebeovpc" {
  source = "app.terraform.io/nambeotest/nambeovpc/aws"
  private_subnet_range = var.private_subnet_range
  public_subnet_range = var.private_subnet_range
}