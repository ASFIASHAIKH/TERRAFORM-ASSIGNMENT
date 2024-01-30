#This is for Ec2 Instance
variable "AWS-REGION" {
    type = string
    default = "ap-south-1"
}

variable "EC2-IMAGE-ID" {
  type = string
  default = "ami-00952f27cf14db9cd"
}

variable "EC2-INST-TYPE" {
    type = string
    default = "t2.micro"
}

