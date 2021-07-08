resource "aws_eip" "gambley_node1_eip" {
  instance = aws_instance.gambley_swarm_master.id
  tags = {
    "Name"      = "Gambley Node1 Elastic IP"
    "Terraform" = "True"
  }
}
