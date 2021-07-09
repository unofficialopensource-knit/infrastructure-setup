resource "aws_iam_role" "gambley_instance_role" {
  name               = "gambley-instance-role"
  assume_role_policy = file("${path.module}/data/iam_role_policy.json")
  tags = {
    "Terraform" = "True"
  }
}

resource "aws_iam_instance_profile" "gambley_iam_instance_profile" {
  name = "gambley-iam-profile"
  role = aws_iam_role.gambley_instance_role.name
  tags = {
    "Terraform" = "True"
  }
}
