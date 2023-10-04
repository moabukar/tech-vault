provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-abc12345"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-bucket"
  acl    = "private"
}
