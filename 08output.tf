output "aws_public_ip" {
  description = "Geeting aws ec2 instance public ip"
  value = "${aws_instance.AWSEC2instance.public_ip}"
}
output "aws_private_ip" {
  description = "Geeting aws ec2 instance private ip"
  value = "${aws_instance.AWSEC2instance.private_ip}"
}
