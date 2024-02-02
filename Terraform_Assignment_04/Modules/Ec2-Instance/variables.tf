###THIS IS FOR EC2 INSTANCE

variable "M-Ec2-INST-NAME" {
  type = string
}
variable "M-Ec2-INST-AMI" {
  type = string
}
variable "M-Ec2-INST-TYPE" {
  type = string
}

###THIS IS FOR SECURITY GROUPS
variable "M-SECURITY-GROUPS" {
  type = list(any)
}

###THIS IS FOR SSH KEY PAIR
variable "M-KEY-NAME" {
  type = string
}