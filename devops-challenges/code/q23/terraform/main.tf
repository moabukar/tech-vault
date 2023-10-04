provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "this" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  versioning {
    enabled = false
  }
}
