#EC2 INSTANCE
variable "SSH-INST-NAME" {
  type = string
  default = "ASFI-TERRA"
}

variable "EC2-IMAGE" {
  type = string
  default = "ami-00952f27cf14db9cd"
}

variable "EC2-TYPE" {
  type = string
  default = "t2.micro"
}

#EC2 KEY-PAIR
variable "EC2-KEY-PAIR" {
  type = string
  default = "ASFI-KEY"
}

variable "EC2-PUB-KEY" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDbfBiOWAXVijUydGADDc/Oa00P52YXy138A6pcPp82Jf3nH9raccAMklf+SiwFRJoDD+CF4paZqGqLIV5Bk1O7Rw1CS2tjOAWvBZkhDIRfwZvivttKonk1ymThLqOyFco5oCi9/BJ6uaTH3+acu6ZeKjJBr6GrRaA0P+16KAX58nUZpYmhvqj7RY/0+kZcErBQvERI8bkkpWv8PMdyvZDkFKYUdnBYFP3TdPjk4HwYB1Cq7ILS2lE1cjDLYTgKQAbtYNOrMSPfyNZDVJwJ4uQilcw4Qyd8fnrkiYE1JEHaCi5RZr5b2IV4+3t16p9EAtzjj7aIFu2UNKmA9RgRjmljs5QhxesR1mIw17l6YWEVlPS9ohy2EhaFbThhKFXsFW0i8C6+OT3vfKAy56P5mNpHOfaA25Nan3b1V70q9prxF7JIN9yOrUGn7BY6EmthncGvkKEmAlvGubkbVp6nnonD9tjmM0LTOzGulyo2zhzBIFG+rrd5F94JG4WkEw0Veis="
}

#SSH SECURITY GROUP
variable "SSH-SG" {
  type = string
  default = "ASFI-SG"
}

variable "SG-DESC" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "SSH-HTTP" {
  type = number
  default = 80
}

variable "SSH-HTTPS" {
  type = number
  default = 443
}

variable "SSH-CIDR" {
  type = list
  default = ["0.0.0.0/0"]
}
