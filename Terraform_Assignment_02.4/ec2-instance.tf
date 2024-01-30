#EC2 INSTANCE
resource "aws_instance" "web" {
  ami                         = var.AWS-INST-IMG-ID
  instance_type               = var.AWS-INST-TYPE
  security_groups             = [aws_security_group.TEAM-SG.id]
  key_name                    = aws_key_pair.Team-key.id
  subnet_id                   = aws_subnet.Public-Subnet-1a.id
  associate_public_ip_address = var.ASSOC-PUB-IP

  tags = {
    Name = var.AWS-INST-NAME
  }
}

#SSH KEY-PAIR 
resource "aws_key_pair" "Team-key" {
  key_name   = var.AWS-KEY-NAME
  public_key = var.AWS-PUB-KEY
}
