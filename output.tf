# Output for VPC ID
output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main.id
}

# Output for VPC CIDR block
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.main.cidr_block
}

# Output for Subnet ID
output "subnet_id" {
  description = "The ID of the created subnet"
  value       = aws_subnet.main.id
}

# Output for Subnet CIDR block
output "subnet_cidr_block" {
  description = "The CIDR block of the subnet"
  value       = aws_subnet.main.cidr_block
}
