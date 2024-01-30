/*
=================================================================================================================
Que 2 →
Create one EC2 Instance and Elastic IP using Terraform and Map elastic IP with EC2 instance.
 
Also please make sure you will use a combination of both variables in the main.tf file. 
i.e. local and variable from variables.tf and custom.tfvars file.
Also use output values to print EC2 instances Public DNS name , Private DNS name , Private IP and Public IP.
 
Note :- 
	Here you will require one locals in the main.tf file. 
	Also four output values in the main.tf file.
=================================================================================================================
*/

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
  region = var.AWS-REGION
}


resource "aws_instance" "my-web" {
  ami           = var.EC2-IMAGE-ID
  instance_type = var.EC2-INST-TYPE

  tags = {
    Name = local.instance_tags["Name"]
  }
}

resource "aws_eip" "lb" {
  instance = aws_instance.my-web.id
  domain   = "vpc"

 tags = {
    Name = local.Elastic-ID_tags["Name"]
  }
}

output "Public-DNS" {
  value = aws_instance.my-web.public_dns
}

output "Private-DNS" {
  value = aws_instance.my-web.private_dns
}

output "Private-IP" {
  value = aws_instance.my-web.private_ip
}

output "Public-IP" {
  value = aws_instance.my-web.public_ip
}