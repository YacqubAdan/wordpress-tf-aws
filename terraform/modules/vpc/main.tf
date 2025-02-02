# vpc
resource "aws_vpc" "wordpress_vpc" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = var.vpc_name
  }
}

# public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.wordpress_vpc.id
  cidr_block        = var.public_subnet_cidr_block
  availability_zone = var.subnet_availability_zone
  tags = {
    Name = var.public_subnet_name
  }
}

# ig
resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.wordpress_vpc.id
  tags = {
    Name = var.internet_gateway_name
  }
}

# route table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.wordpress_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }
  tags = {
    Name = var.public_route_name
  }
}

# association public subnet route table
resource "aws_route_table_association" "public_rta" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}