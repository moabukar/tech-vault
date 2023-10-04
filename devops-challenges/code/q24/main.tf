provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0abcdef1234567890" # Replace with your AMI ID created with Packer
  instance_type = "t2.micro"

  tags = {
    Name = "nginx-server"
  }
}
