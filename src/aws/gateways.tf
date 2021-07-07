resource "aws_internet_gateway" "gambley_internet_gateway" {
  vpc_id = aws_vpc.gambley_vpc.id
  tags = {
    "Name"      = "Gambley Internet Gateway"
    "Terraform" = "True"
  }
}

resource "aws_nat_gateway" "gambley_nat_gateway" {
  allocation_id = aws_eip.gambley_nat_eip.id
  subnet_id     = aws_subnet.gambley_subnet_public.id
  tags = {
    "Name"      = "Gambley NAT Gateway"
    "Terraform" = "True"
  }
}
