terraform {
  cloud {
    organization = "kenu"
    workspaces {
      name = "learn-tfc-aws"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

// provider is a plugin that Terraform uses to create and manage your resources
// you can have different providers working together
provider "aws" {
  region = "ap-northeast-1"
}

// resource_type = aws_instance
// resource_name = app_server
resource "aws_instance" "app_server" {
  ami           = "ami-0d979355d03fa2522"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
