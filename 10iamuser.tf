provider "aws" {
  region = "ap-south-1b"
}

resource "aws_iam_users" "IAMUser" {
  
   //name = "awsiamusercreation"

   count = length(var.iam_user)
   name = var.iam_user[count.index]
  
}

resource "aws_iam_user_policy_attachment" "msspolicy" {
  
 count = length(var.iam_user)
 name = aws_iam_users.IAMUser[count.index].name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}