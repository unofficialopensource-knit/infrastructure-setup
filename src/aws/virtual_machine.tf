# resource "aws_instance" "gambley_swarm_master" {
#   ami           = "ami-0c1a7f89451184c8b"
#   instance_type = "t3a.small"
# }

resource "aws_key_pair" "gambley_ssh_key" {
  key_name   = "Gambley SSH Key"
  public_key = file("${path.module}/data/id_gambley.pub")
}
