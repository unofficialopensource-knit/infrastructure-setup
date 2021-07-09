resource "aws_instance" "gambley_swarm_master" {
  ami                         = "ami-0c1a7f89451184c8b"
  instance_type               = "t3a.small"
  key_name                    = aws_key_pair.gambley_ssh_key.key_name
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.gambley_iam_instance_profile.name
  security_groups = [
    aws_security_group.gambley_security_group.name
  ]
  tags = {
    "Name"      = "Gambley Node1"
    "Terraform" = "True"
  }
}

resource "aws_key_pair" "gambley_ssh_key" {
  key_name   = "Gambley SSH Key"
  public_key = file("${path.module}/data/id_gambley.pub")
}

resource "aws_security_group" "gambley_security_group" {
  name        = "Gambley Security group"
  description = "Security group for gambley host"
  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}
