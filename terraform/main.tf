terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  subnet_availability_zone = var.subnet_availability_zone
  public_subnet_cidr_block = var.public_subnet_cidr_block
  vpc_cidr_block           = var.vpc_cidr_block
}

module "ec2" {
  source = "./modules/ec2"

  vpc_id           = module.vpc.vpc_id
  public_subnet_id = module.vpc.public_subnet_id
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  key_name         = var.key_name
  my_ip            = var.my_ip

}

