#SSH SECURITY GROUP
variable "AWS-SG-NAME" {
  type    = string
  default = "TEAM-SG"
}

variable "AWS-SG-DESC" {
  type    = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "AWS-SG-PORT" {
  type    = list(number)
  default = [22, 80, 443]
}

variable "AWS-SG-PROTO" {
  type    = string
  default = "tcp"
}

variable "AWS-CIDR-BLOCK" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}