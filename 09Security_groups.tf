provider "aws" {
  region = "ap-south-1"
  
}

resource "aws_security_group" "msssg" {
    
    description = "Custom SG created by MKTECH"
    name = "SecurityGroupbyMK"
    vpc_id = "vpc-59875632"

    ingress {
    description      = "InBound Ruls enable"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = [0.0.0.0/0]
    
  }

   egress {
     description      = "OutBound Ruls enable"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "Security Group by Mk"
  }

  }