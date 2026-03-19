terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a s3
resource "aws_s3_bucket" "example" {
    # example is a internal name for terraform reference
  bucket = "s3-bucket-with-terraform-1243"

  tags = {
    Name        = "My bucket 2.0 updated"
    Environment = "Dev"
  }
}