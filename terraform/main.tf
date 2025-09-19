provider "aws" {
    region = var.region
}

module "vpc" {
    source      = "./modules/vpc"
    vpc_cidr    = var.vpc_cidr
    subnet_cidr = var.subnet_cidr
    region      = var.region
    environment = var.environment
}

module "ec2" {
    source            = "./modules/ec2"
    instance_type     = var.instance_type
    subnet_id         = module.vpc.subnet_id
    security_group_id = module.vpc.security_group_id
    key_name          = var.key_name
    environment       = var.environment
}