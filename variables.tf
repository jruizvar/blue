# Application Load Balancer Demo
# Author: awss3.com

variable "region" {
  description = "The region Terraform deploys your instances"
  type        = string
  default     = "sa-east-1"
}

variable "azs" {
  description = "Availability zones"
  type        = list(string)
  default     = ["sa-east-1a", "sa-east-1c"]
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_vpn_gateway" {
  description = "Enable a VPN gateway in your VPC."
  type        = bool
  default     = false
}

variable "public_subnet_count" {
  description = "Number of public subnets."
  type        = number
  default     = 2
}

variable "private_subnet_count" {
  description = "Number of private subnets."
  type        = number
  default     = 2
}

variable "public_subnet_cidr_blocks" {
  description = "Available cidr blocks for public subnets"
  type        = list(string)
  default = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24",
    "10.0.4.0/24",
    "10.0.5.0/24",
    "10.0.6.0/24",
    "10.0.7.0/24",
    "10.0.8.0/24",
  ]
}

variable "private_subnet_cidr_blocks" {
  description = "Available cidr blocks for private subnets"
  type        = list(string)
  default = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24",
    "10.0.104.0/24",
    "10.0.105.0/24",
    "10.0.106.0/24",
    "10.0.107.0/24",
    "10.0.108.0/24",
  ]
}

variable "streamlit_app" {
  description = "Streamlit app Python code"
  type        = string
}

variable "aws_ami_linux_debian" {
  description = "Linux Debian 12"
  type        = string
  default     = "ami-0c0746ac7168488ae"
}

variable "certificate_arn" {
  description = "SSL Certificate for domain blue.awss3.com"
  type        = string
  default     = "arn:aws:acm:sa-east-1:584879734531:certificate/c7ba9338-cbf4-42c6-af58-2d8751590bb3"
}
