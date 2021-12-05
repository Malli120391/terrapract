variable "ami" {
 
   description = "Amazon Machine Inage"
   default = "ami-06a0b4e3b7eb7a300"
}

variable  "instance_type" {
  
   description = "Amazon  Insatnce type like t2.micro, t2.medium..."
   default = "t2.micro"
  
}

variable  "instance" {
  
   description = "The Total number of Resources..."
   default = "4"
  
}