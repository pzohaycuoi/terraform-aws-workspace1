terraform {
  cloud {
    organization = "nambeohihi"
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
  source = "https://app.terraform.io/app/nambeotest/registry/modules/private/nambeotest/nambeoec2/aws/0.0.2"
  subnet = module.nambeovpc.private_subnets
}

module "namebeovpc" {
  source = "https://app.terraform.io/app/nambeotest/registry/modules/private/nambeotest/nambeovpc/aws/0.0.2"
  private_subnet_range = var.private_subnet_range
  public_subnet_range = var.private_subnet_range
}