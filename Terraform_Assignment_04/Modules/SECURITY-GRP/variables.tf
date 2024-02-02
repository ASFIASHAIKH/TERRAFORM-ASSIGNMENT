###THIS IS FOR SECURITY GROUP

variable "M-SG-NAME" {
  type = string
}

variable "M-SG-DESC" {
  type = string
}

variable "M-SG-PORT" {
  type = list(number)
}

variable "M-SG-PROTO" {
  type = string
}

variable "M-CIDR-BLOCK" {
  type = list(any)
}

