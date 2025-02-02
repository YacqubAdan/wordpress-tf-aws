output "vpc_id" {
  description = "The id of the VPC"
  value       = aws_vpc.wordpress_vpc.id
}

output "public_subnet_id" {
  description = "The id of the public subnet"
  value       = aws_subnet.public_subnet.id
}


