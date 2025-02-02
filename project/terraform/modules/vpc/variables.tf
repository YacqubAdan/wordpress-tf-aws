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




