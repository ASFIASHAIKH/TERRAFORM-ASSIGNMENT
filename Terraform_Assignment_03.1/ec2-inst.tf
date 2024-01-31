#Ques -> Create EC2 instace

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

#THIS IS FOR SSH KEY
resource "aws_key_pair" "key-pair" {
  key_name   = local.INST-KEY-PAIR["Name"]
  public_key = local.INST-PUB-KEY["Name"]
}

#THIS IS FOR EC2-INSTANCE
resource "aws_instance" "web" {
  ami           = local.INST-AMI-ID["Name"]
  instance_type = local.INST-TYPE["Name"]
  key_name      = aws_key_pair.key-pair.id
  tags = {
    Name = local.INST-NAME["Name"]
  }
}