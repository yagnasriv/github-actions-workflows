terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    random = {
      version = ">=2.1.2"
    }
  }

  required_version = ">=1.2.0"

  ### Infrastructure is continuously evolving, and Terraform helps you manage that change. 
  ### As you change Terraform configurations, 
  ### Terraform builds an execution plan that only modifies what is necessary to reach your desired state.

  ### When using Terraform in production, we recommend that you use a version control system 
  ### to manage your configuration files, 
  ### and store your state in a remote backend such as Terraform Cloud or Terraform Enterprise.

  backend "s3" {

    bucket = "terraform-backend-yv"
    key = "terraform.tfstate"
    region = "us-east-1"
    
  }
}


provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "this" {
  ami                     = var.ami
  instance_type           = var.instance_type
  subnet_id               = var.subnet_id
}


# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-test-bucket02-yv"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }