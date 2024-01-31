# main.tf

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

#EC2 INSTANCE
resource "aws_instance" "logical-web" {
  ami           = var.EC2-IMAGE
  instance_type = var.EC2-TYPE

  tags = {
    Name = var.SSH-INST-NAME
  }
}

#SSH KEY-PAIR 
resource "aws_key_pair" "deployer" {
  key_name   = var.EC2-KEY-PAIR
  public_key = var.EC2-PUB-KEY 
}

#SSH SECURITY GROUP
resource "aws_security_group" "allow_tls" {
  name        = var.SSH-SG
  description = var.SG-DESC


  tags = {
    Name = var.SSH-SG
  }

  ingress {
    from_port        = var.SSH-HTTP
    to_port          = var.SSH-HTTP
    protocol         = "tcp"
    cidr_blocks      = var.SSH-CIDR
    
  }

  egress {
    from_port        = var.SSH-HTTPS
    to_port          = var.SSH-HTTPS
    protocol         = "tcp"
    cidr_blocks      = var.SSH-CIDR
    
  }
}

