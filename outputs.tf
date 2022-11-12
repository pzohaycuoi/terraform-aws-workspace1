output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnet" {
  value = module.vpc.private_subnet
}

output "public_subnet" {
  value = module.vpc.public_subnet
}

output "region" {
  value = var.region
}

output "project_name" {
  value = var.project_name
}