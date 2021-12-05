provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXJQW2XIO3ABO2NUQ"
  secret_key = "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"
}

resource "aws_instance" "AWSEC2instance" {

  ami = "ami-06a0b4e3b7eb7a300"
  instance_type = "t2.micro"
  security_groups = ["launch-wizard-6"]
  user_data = "${file("installapacheserver.sh")}"
  key_name = "redrhel"
  tags = {
    Name = "RedHatUserdata-ApacheHttp"
  }
}