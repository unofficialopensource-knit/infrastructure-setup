provider "aws" {
  region = "ap-south-1"
}

provider "github" {
  token = var.GH_PERSONAL_ACCESS_TOKEN
  owner = "unofficialopensource-knit"
}

terraform {
  backend "s3" {
    bucket         = "terraform-gambley-state-bucket"
    key            = "github/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-gambley-lock-table"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
    github = {
      source  = "integrations/github"
      version = "4.10.0"
    }
  }
}
