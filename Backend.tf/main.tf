
provider "aws" {
  region = "ap-south-2"

}


resource "aws_s3_bucket" "s3-bucket" {
  bucket = "rithish-bucket-terraform-firl-123456"

  lifecycle {
    prevent_destroy = false
  }

}


resource "aws_dynamodb_table" "rithsih-dynamodb-xyz" {
  name         = "rithish"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}
