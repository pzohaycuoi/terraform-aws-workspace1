terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.39.0"
    }
    aws_vpc = {
      source = "terraform-aws-modules/vpc/aws"
    }

  }
}