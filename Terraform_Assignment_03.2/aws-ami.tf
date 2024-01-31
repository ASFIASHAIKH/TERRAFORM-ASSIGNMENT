# Ques 2 -> Create AMI

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

resource "aws_ami_from_instance" "terra-ami" {
  name               = local.AMI-NAME["NAME"]
  source_instance_id = local.INST-ID["NAME"]
}