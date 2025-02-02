aws_region = "eu-west-2"

#vpc
vpc_cidr_block     = "10.0.0.0/16"
public_subnet_cidr_block = "10.0.1.0/24"
subnet_availability_zone = "eu-west-2a"

#ec2
ami_id        = "ami-07f1b7acc867980ff"
instance_type = "t2.micro"
key_name      = "mykey"
my_ip         = var.my_ip
