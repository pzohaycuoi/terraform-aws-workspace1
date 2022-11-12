variable "region" {
  description = "region to provision resources"
  type = string
  default = "ap-southeast-1"
}

variable "public_subnet_range" {
  description = "public subnet ip range"
  type = list(any)
}

variable "vpc_name" {
  description = "name of the vpc"
  type = string
}

variable "vpc_cidr" {
  description = "cidr range of the VPC"
  type = string
}

variable "vpc_azs" {
  description = "availability zone for subnets"
  type = list(any)
}
