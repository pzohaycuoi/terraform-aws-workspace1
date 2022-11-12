output "vpc_id" {
  value = module.nambeovpc.vpc_id
}

output "private_subnet" {
  value = module.nambeovpc.private_subnet
}

output "public_subnet" {
  value = module.nambeovpc.public_subnet
}

output "region" {
  value = var.region
}

output "project_name" {
  value = var.project_name
}