terraform {
  required_version = "1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.46.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "site-estatico-carlos12365498"

  tags = var.bucket_tags
}