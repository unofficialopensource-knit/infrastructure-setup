resource "aws_route_table" "gambley_private_route_table" {
  vpc_id = aws_vpc.gambley_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.gambley_nat_gateway.id
  }
}

resource "aws_route_table_association" "gambley_private_route_table_association" {
  subnet_id      = aws_subnet.gambley_subnet_private.id
  route_table_id = aws_route_table.gambley_private_route_table.id
}
