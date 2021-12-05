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

   #dynamically pass no of instance for that you use "terraform apply -var instance="2" -auto-approve" command

   #export AWS_ACCESS_KEY_ID="AKIAXJQW2XIO3ABO2NUQ"
   #export AWS_SECRTE_ACCESS_KEY="McGglmz0xc67cnq+g1QtJC+7zbu9ClABFnSS/xwZ"
  
}