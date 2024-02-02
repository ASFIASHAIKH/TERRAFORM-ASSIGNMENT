###THIS IS FOR EC2 INSTANCE

output "M-INSTANCE" {
  value = aws_instance.M-My-Ec2.id
}