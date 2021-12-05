resouce "aws_instance" "AWSEC2instance" {

  ami = "ami-06a0b4e3b7eb7a300"
  insatnce_type = "t2.micro"
  security_groups = ["launch-wizard-6"]
  key_name = "redrhel"
  tags {
    Name = "RedHatawsInstance"
  }
}