resource "aws_s3_bucket" "b" {
  bucket = "terramat-test"

  tags = {
    Name        = "terramate test"
    Environment = var.env
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}

variable "env" {
  type = string
  default = "QA"
}