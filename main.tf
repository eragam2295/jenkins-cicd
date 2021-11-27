terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}


resource "aws_instance" "admin" {
  ami           = "ami-01e36b7901e884a10"
  instance_type = "t2.micro"
  tags = {
    Name = "admin"
  }
}
