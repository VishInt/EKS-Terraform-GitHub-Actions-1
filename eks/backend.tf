terraform {
  required_version = "~> 1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "dev-vishal-tf-bucket-1"
    region         = "ap-south-1"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}
