resource "aws_subnet" "gambley_subnet_private" {
  vpc_id                  = aws_vpc.gambley_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = "false"
  tags = {
    "Name"      = "Gambley Private Subnet"
    "Terraform" = "True"
  }
}

resource "aws_subnet" "gambley_subnet_public" {
  vpc_id                  = aws_vpc.gambley_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = "true"
  tags = {
    "Name"      = "Gambley Public Subnet"
    "Terraform" = "True"
  }
}
