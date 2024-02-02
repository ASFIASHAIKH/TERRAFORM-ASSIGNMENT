###THIS IS FOR EC2 INSTANCE

resource "aws_instance" "M-My-Ec2" {
  ami             = var.M-Ec2-INST-AMI
  instance_type   = var.M-Ec2-INST-TYPE
  security_groups = var.M-SECURITY-GROUPS
  key_name        = var.M-KEY-NAME
  tags = {
    Name = var.M-Ec2-INST-NAME
  }
}
