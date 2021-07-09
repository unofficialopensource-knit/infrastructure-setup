provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-gambley-state-bucket"
    key            = "aws/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "aws-lock-table"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
  }
}
