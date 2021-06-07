provider "aws" {
  region = "ap-south-1"
}

provider "discord" {
}

terraform {
  backend "s3" {
    bucket         = "discord-state-bucket"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "discord-lock-table"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
    discord = {
      source  = "aequasi/discord"
      version = "0.0.4"
    }
  }
}
