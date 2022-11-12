output "vpc_id" {
  value = module.namebeovpc.vpc_id
}

output "private_subnet" {
  value = module.namebeovpc.private_subnets
}

output "public_subnet" {
  value = module.namebeovpc.public_subnets
}

output "region" {
  value = var.region
}

output "project_name" {
  value = var.project_name
}