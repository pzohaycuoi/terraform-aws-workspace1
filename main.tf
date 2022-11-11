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

module "namebeovpc" {
  source = "app.terraform.io/nambeotest/nambeovpc/aws"
  public_subnet_range = var.public_subnet_range
}