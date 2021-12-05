provider "aws" {
  region = "ap-south-1"
  
}

resource "aws_instance" "AWSEC2instance" {

  ami = "ami-06a0b4e3b7eb7a300"
  instance_type = "t2.micro"
  security_groups = ["launch-wizard-6"]
  key_name = "redrhel"
  tags = {
    Name = "RedHatawsInstance-EIP-association"
  }

}

 resource "aws_eip" "eipmk" {
  
}
resource "aws_eip_association" "mk_eip_assoc" {
  instance_id = aws_instance.AWSEC2instance.id
  allocation_id = aws_eip.eipmk.id
}