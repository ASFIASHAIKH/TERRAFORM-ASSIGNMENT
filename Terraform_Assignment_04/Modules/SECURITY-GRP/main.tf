###THIS IS FOR SECURITY GROUP

resource "aws_security_group" "M-SG" {
  name        = var.M-SG-DESC
  description = var.M-SG-DESC

  tags = {
    Name = var.M-SG-NAME
  }

  dynamic "ingress" {
    for_each = var.M-SG-PORT
    iterator = nain
    content {
      from_port   = nain.value
      to_port     = nain.value
      protocol    = var.M-SG-PROTO
      cidr_blocks = var.M-CIDR-BLOCK
    }
  }

  dynamic "egress" {
    for_each = var.M-SG-PORT
    iterator = main
    content {
      from_port   = main.value
      to_port     = main.value
      protocol    = var.M-SG-PROTO
      cidr_blocks = var.M-CIDR-BLOCK
    }
  }
}