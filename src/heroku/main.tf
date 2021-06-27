provider "aws" {
  region = "ap-south-1"
}

provider "heroku" {
  email   = var.HEROKU_EMAIL
  api_key = var.HEROKU_API_KEY
}

terraform {
  backend "s3" {
    bucket         = "heroku-state-bucket"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "heroku-lock-table"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
    heroku = {
      source  = "heroku/heroku"
      version = "4.4.1"
    }
  }
}
