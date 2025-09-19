variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
}

variable "subnet_cidr" {
    description = "CIDR block for the subnet"
    type        = string
}

variable "region" {
    description = "AWS region"
    type        = string
}

variable "environment" {
    description = "Environment name"
    type        = string
}