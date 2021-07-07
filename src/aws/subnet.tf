resource "aws_subnet" "gambley_subnet" {
  vpc_id                  = aws_vpc.gambley_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = "false"
}
