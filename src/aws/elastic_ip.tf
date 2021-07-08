resource "aws_eip" "gambley_node1_eip" {
  tags = {
    "Name"      = "Gambley Node1 Elastic IP"
    "Terraform" = "True"
  }
}
