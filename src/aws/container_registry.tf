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
