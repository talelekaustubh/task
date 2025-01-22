provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "example" {
  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = true

  tags = {
    Environment = var.environment
    Owner       = "Terraform"
  }
}
