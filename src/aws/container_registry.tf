resource "aws_ecr_repository" "api_gateway" {
  name = "api_gateway"
  encryption_configuration {
    encryption_type = "AES256"
  }
  image_tag_mutability = "IMMUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "auth_service" {
  name = "auth_service"
  encryption_configuration {
    encryption_type = "AES256"
  }
  image_tag_mutability = "IMMUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "email_service" {
  name = "email_service"
  encryption_configuration {
    encryption_type = "AES256"
  }
  image_tag_mutability = "IMMUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "gambley_backend" {
  name = "gambley_backend"
  encryption_configuration {
    encryption_type = "AES256"
  }
  image_tag_mutability = "IMMUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "profile_service" {
  name = "profile_service"
  encryption_configuration {
    encryption_type = "AES256"
  }
  image_tag_mutability = "IMMUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}
