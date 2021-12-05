provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "S3bucketmk" {
  bucket = "s3buvketmksimple"
  acl    = "private"
  versioning {
    enabled = true
  }
  tags = {
    name = "S3 Bucket by Mk"

  }
}