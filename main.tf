terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}


resource "aws_s3_bucket" "aws3bucket" {
  bucket = "bu2295"
}
