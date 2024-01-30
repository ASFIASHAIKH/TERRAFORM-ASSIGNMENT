
# 1. Create a VPC
variable "AWS-VPC" {
  type = string
  default = "MY-VPC"
}

# 2. Create 2 Public Subnets
variable "AWS-PUB-SUB-01" {
  type = string
  default = "PUB-SUB-1a"
}

variable "AWS-PUB-SUB-02" {
  type = string
  default = "PUB-SUB-1b"
}

# 2. Create 2 Private Subnets
variable "AWS-PRI-SUB-01" {
  type = string
  default = "PRI-SUB-1a"
}

variable "AWS-PRI-SUB-02" {
  type = string
  default = "PRI-SUB-1b"
}

# 3. Create IGW (Internet Gateway) & Attach to the VPC
variable "AWS-IGW" {
  type = string
  default = "MY-INTERNET-GW"
}

# 4. Create Public and Private Route Table
variable "AWS-PUB-ROUTE" {
  type = string
  default = "Public-Route"
}

variable "AWS-PRI-ROUTE" {
  type = string
  default = "Private-Route"
}



