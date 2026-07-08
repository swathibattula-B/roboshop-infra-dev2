output "vpc_id" {
    value = module.vpc.vpc_id
}

output "public_subnet_ids" {
    value = module.vpc.public_subnet
}

output "private_subnet_ids" {
    value = module.vpc.private_subnet
}

output "database_subnet_ids" {
    value = module.vpc.database_subnet
}