terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "backend-bucket-terraform-123"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
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
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "example2" {
  # example is a internal name for terraform reference
  bucket = "s3-bucket2-with-terraform-1243"

  tags = {
    Name        = "My bucket 2"
    Environment = "Test"
  }
}