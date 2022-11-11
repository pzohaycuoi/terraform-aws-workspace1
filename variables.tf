variable "region" {
  description = "region to provision resources"
  type = string
  default = "ap-southeast-1"
}

variable "public_subnet_range" {
  description = "public subnet ip range"
  type = list(any)
}