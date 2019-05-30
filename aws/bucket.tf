resource "aws_s3_bucket" "b" {
  bucket = "mykola2019-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
  }
}