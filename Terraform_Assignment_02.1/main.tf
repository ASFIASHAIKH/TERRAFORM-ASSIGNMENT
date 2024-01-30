/*
=================================================================================================================
Que 1 →
Create one IAM user and one IAM Group using Terraform.
Make sure you will use variables for names of IAM users and Group.
 
    Note :- Below files are required. 
              - main.tf
              - variables.tf
              - your_name_custom.tfvars
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
}

#This is for IAM USER
resource "aws_iam_user" "au" {
  name = var.AWS-IAM-NAME
  path = "/system/"

  tags = {
    tag-key = var.IAM-USER-TAG
  }
}

#This is for IAM GROUP
resource "aws_iam_group" "CloudOps" {
  name = "CloudOps"
  path = "/users/"
}
