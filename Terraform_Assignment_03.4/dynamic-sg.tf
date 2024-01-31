# Ques 4 -> SG with Dynamic

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

#SSH SECURITY GROUP
resource "aws_security_group" "TEAM-SG" {
  name        = var.AWS-SG-NAME
  description = var.AWS-SG-DESC
  
  tags = {
    Name = var.AWS-SG-NAME
  }

  dynamic "ingress" {
    for_each = var.AWS-SG-PORT
    iterator = core
    content {
      from_port   = core.value
      to_port     = core.value
      protocol    = var.AWS-SG-PROTO
      cidr_blocks = var.AWS-CIDR-BLOCK
    }
  }

  dynamic "egress" {
    for_each = var.AWS-SG-PORT
    iterator = score
    content {
      from_port   = score.value
      to_port     = score.value
      protocol    = var.AWS-SG-PROTO
      cidr_blocks = var.AWS-CIDR-BLOCK
    }
  }
}