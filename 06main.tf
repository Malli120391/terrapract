provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXJQW2XIO3ABO2NUQ"
  secret_key = "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"
}

resouce "aws_instance" "AWSEC2instance" {
  count = "${var.instance}"
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  security_groups = ["launch-wizard-6"]
  key_name = "redrhel"
  tags = {
    Name = "RedHatawsNumberwaise-${count.index}"
  }
}