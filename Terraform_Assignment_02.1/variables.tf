#This is for IAM USER
variable "AWS-IAM-NAME" {
  type = string
  default = "admin-user"
}

variable "IAM-USER-TAG" {
    type = string
    default = "cloud-admin"
}

#This is for IAM GROUP
variable "AWS-IAM-GROUP" {
  type = string
  default = "CloudOps"
}