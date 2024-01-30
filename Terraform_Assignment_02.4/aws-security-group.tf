#SSH SECURITY GROUP
resource "aws_security_group" "TEAM-SG" {
  name        = var.AWS-SG-NAME
  description = var.AWS-SG-DESC
  vpc_id      = aws_vpc.my-vpc.id

  tags = {
    Name = var.AWS-SG-NAME
  }

  dynamic "ingress" {
    for_each = var.AWS-SG-PORT
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = var.AWS-SG-PROTO
      cidr_blocks = var.AWS-CIDR-BLOCK
    }
  }

  dynamic "egress" {
    for_each = var.AWS-SG-PORT
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = var.AWS-SG-PROTO
      cidr_blocks = var.AWS-CIDR-BLOCK
    }
  }
}
