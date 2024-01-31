# Ques 3 -> Create Ec2 using data block but use your AMI ID

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

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["313897473255"]

  filter {
    name   = "name"
    values = ["Terra-AMI"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

output "Demo" {
  value = data.aws_ami.ubuntu
}


resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = local.AMI-INST-TYPE["Name"]

  tags = {
    Name = local.AMI-CREATE-INST["Name"]
  }
}
