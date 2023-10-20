terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {

    bucket = "terraform-backend-yv"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}


provider "aws" {
  region     = "us-east-1"
}

# resource "aws_instance" "this" {
#   ami                     = var.ami
#   instance_type           = var.instance_type
#   subnet_id               = var.subnet_id
# }


resource "aws_s3_bucket" "example" {
  bucket = "aws-s3-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}