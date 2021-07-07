resource "aws_vpc" "gambley_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name"      = "Gambley VPC"
    "Terraform" = "True"
  }
}
