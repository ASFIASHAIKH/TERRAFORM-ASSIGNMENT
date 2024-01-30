# Create a VPC
variable "AWS-VPC" {
  type    = string
  default = "MY-VPC"
}

# Create Public Subnets
variable "AWS-PUB-SUB-01" {
  type    = string
  default = "PUB-SUB-1a"
}

variable "AWS-PUB-SUB-02" {
  type    = string
  default = "PUB-SUB-1b"
}

# 2. Create 2 Private Subnets
variable "AWS-PRI-SUB-01" {
  type    = string
  default = "PRI-SUB-1a"
}

variable "AWS-PRI-SUB-02" {
  type    = string
  default = "PRI-SUB-1b"
}

# 3. Create IGW (Internet Gateway) & Attach to the VPC
variable "AWS-IGW" {
  type    = string
  default = "MY-INTERNET-GW"
}

# 4. Create Public and Private Route Table
variable "AWS-PUB-ROUTE" {
  type    = string
  default = "Public-Route"
}

variable "AWS-PRI-ROUTE" {
  type    = string
  default = "Private-Route"
}

#EC2 INSTANCE
variable "AWS-INST-IMG-ID" {
  type    = string
  default = "ami-00952f27cf14db9cd"
}

variable "AWS-INST-TYPE" {
  type    = string
  default = "t2.micro"
}

variable "AWS-INST-NAME" {
  type    = string
  default = "HELLO-ASFIA"
}

#SSH KEY-PAIR 
variable "AWS-KEY-NAME" {
  type    = string
  default = "TEAM-KEY"
}

variable "AWS-PUB-KEY" {
  type    = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDbfBiOWAXVijUydGADDc/Oa00P52YXy138A6pcPp82Jf3nH9raccAMklf+SiwFRJoDD+CF4paZqGqLIV5Bk1O7Rw1CS2tjOAWvBZkhDIRfwZvivttKonk1ymThLqOyFco5oCi9/BJ6uaTH3+acu6ZeKjJBr6GrRaA0P+16KAX58nUZpYmhvqj7RY/0+kZcErBQvERI8bkkpWv8PMdyvZDkFKYUdnBYFP3TdPjk4HwYB1Cq7ILS2lE1cjDLYTgKQAbtYNOrMSPfyNZDVJwJ4uQilcw4Qyd8fnrkiYE1JEHaCi5RZr5b2IV4+3t16p9EAtzjj7aIFu2UNKmA9RgRjmljs5QhxesR1mIw17l6YWEVlPS9ohy2EhaFbThhKFXsFW0i8C6+OT3vfKAy56P5mNpHOfaA25Nan3b1V70q9prxF7JIN9yOrUGn7BY6EmthncGvkKEmAlvGubkbVp6nnonD9tjmM0LTOzGulyo2zhzBIFG+rrd5F94JG4WkEw0Veis="
}

variable "ASSOC-PUB-IP" {
  type    = bool
  default = true
}

variable "ASSO-PUB-IP" {
  type    = bool
  default = true
}

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
