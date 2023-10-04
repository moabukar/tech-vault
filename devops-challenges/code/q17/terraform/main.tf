provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-super-cool-bucket"
  acl    = "private"
}

resource "aws_lambda_function" "my_lambda" {
  function_name = "my_lambda"

  s3_bucket = aws_s3_bucket.my_bucket.bucket
  s3_key    = "lambda_function_payload.zip"

  handler = "handler.handler"
  runtime = "python3.8"

  role = aws_iam_role.iam_for_lambda.arn
}

resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}
