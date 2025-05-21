
resource "aws_vpc" "main" {
  cidr_block = "10.${terraform.workspace == "dev" ? 1 : terraform.workspace == "test" ? 2 : 3}.0.0/16" # ✅ Replaced address_space

  tags = {
    Name        = "vpc-${terraform.workspace}"
    Environment = terraform.workspace
    ManagedBy   = "Terraform"
  }
}

# Create a subnet (equivalent of azurerm_subnet)
resource "aws_subnet" "main" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.${terraform.workspace == "dev" ? 1 : terraform.workspace == "test" ? 2 : 3}.0.0/24" # ✅ Replaced address_prefixes
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true # optional: assign public IPs automatically

  tags = {
    Name        = "subnet-${terraform.workspace}"
    Environment = terraform.workspace
    ManagedBy   = "Terraform"
  }
}
