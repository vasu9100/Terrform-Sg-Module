terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

  }

  backend "s3" {
    bucket         = "roboshop-terraform-state-bucket"
    key            = "terraforminfra/roboshop_sg.state"
    region         = "us-east-1"
    dynamodb_table = "security-group-lock"

  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
