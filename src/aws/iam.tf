resource "aws_iam_role" "gambley_instance_role" {
  name               = "GambleyInstanceRole"
  assume_role_policy = file("${path.module}/data/iam_role_policy.json")
  tags = {
    "Terraform" = "True"
  }
}

resource "aws_iam_instance_profile" "gambley_iam_instance_profile" {
  name = "GambleyIAMProfile"
  role = aws_iam_role.gambley_instance_role.name
  tags = {
    "Terraform" = "True"
  }
}

resource "aws_iam_role_policy" "gambley_iam_instance_policy" {
  name   = "GambleyIAMInstancePolicy"
  role   = aws_iam_role.gambley_instance_role.id
  policy = file("${path.module}/data/iam_role_instance_policy.json")
}
