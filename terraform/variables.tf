# region
variable "aws_region" {
  description = "The region of AWS"
  type        = string
}

# vpc variables
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "subnet_availability_zone" {
  description = "The availability zone for the private subnet"
  type        = string
}

variable "vpc_name" {
  description = "The name tag for the VPC"
  type        = string
  default     = "WordPressVPC"
}

variable "public_subnet_name" {
  description = "The name tag for the public subnet"
  type        = string
  default     = "PublicSubnet"
}

variable "internet_gateway_name" {
  description = "The name tag for the public subnet"
  type        = string
  default     = "MainInternetGateway"
}

variable "public_route_name" {
  description = "The name tag for the public subnet"
  type        = string
  default     = "PublicRouteTable"
}

# ec2 variables
variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-06e2402cc10233981"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
}

variable "my_ip" {
  description = "Your IP address for SSH access"
  type        = string
}
