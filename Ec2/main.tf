provider "aws" {
    region      = "us-east-1"
  }

resource "aws_instance" "New-server"  {
  ami                       = "ami-00ff427d936335825"
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [var.sg]

  tags     = {
    Name   = "EC2-Terraform-Instance"
  }

  }

variable "sg" {  
  }