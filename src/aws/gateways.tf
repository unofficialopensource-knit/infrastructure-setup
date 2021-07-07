resource "aws_internet_gateway" "gambley_internet_gateway" {
  vpc_id = aws_vpc.gambley_vpc.id
}
