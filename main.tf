terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create an ec2 instance
resource "aws_instance" "foo" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
tags = {
    Name = "TF_Instance"
}
}
