variable "region" {
    description = "AWS region"
    type        = string
    default     = "us-east-1"
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
    description = "CIDR block for the subnet"
    type        = string
    default     = "10.0.1.0/24"
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t2.micro"
}

variable "key_name" {
    description = "AWS key pair name"
    type        = string
    default     = "Ec2" # Replace with your key pair name
}

variable "environment" {
    description = "Environment name"
    type        = string
    default     = "dev"
}