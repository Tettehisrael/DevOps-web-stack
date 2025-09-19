variable "instance_type" {
    description = "EC2 instance type"
    type        = string
}

variable "subnet_id" {
    description = "Subnet ID for the EC2 instance"
    type        = string
}

variable "security_group_id" {
    description = "Security group ID for the EC2 instance"
    type        = string
}

variable "key_name" {
    description = "AWS key pair name"
    type        = string
}

variable "environment" {
    description = "Environment name"
    type        = string
}