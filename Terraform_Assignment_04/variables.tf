###THIS IS FOR EC2 INSTANCE
variable "P-Ec2-INST-NAME" {
  type = string
}
variable "P-Ec2-INST-AMI" {
  type = string
}
variable "P-Ec2-INST-TYPE" {
  type = string
}

###THIS IS FOR SECURITY GROUP
variable "P-SG-NAME" {
  type = string
}
variable "P-SG-DESC" {
  type = string
}
variable "P-SG-PORT" {
  type = list(any)
}
variable "P-SG-PROTO" {
  type = string
}
variable "P-CIDR-BLOCK" {
  type = list(any)
}

###THIS IS FOR SSH KEY PAIR
variable "P-SSH-KEY" {
  type = string
}
variable "P-SSH-PUB" {
  type = string
}
