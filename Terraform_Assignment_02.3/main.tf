/*
================================================================================================================
Que 3 →
Create AWS VPC with Terraform.  
Please follow the given link for more on AWS VPC creation.
 
1. Create a VPC
2. Create 2 Public Subnet & Create 2 Private Subnet
3. Create IGW (Internet Gateway) & Attach to the VPC
4. Create Public and Private Route Table
5. Add IGW in Public Route table (0.0.0.0/0)
6. Add Public Subnet (1a & 1b) in Route table
7. Create a NAT Gateway in Public Subnet
8. Add NAT GW into the Private Route Table
9. Add Private Subnet in Private Route Table
 
Link :- 
             https://varunmanik1.medium.com/how-to-create-aws-vpc-in-10-steps-less-than-5-min-a49ac12064aa
 
Note :- 
            Try to create VPC manually to understand the concepts and then go for Terraform automation.
================================================================================================================
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

# 1. Create a VPC
resource "aws_vpc" "my-vpc" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = var.AWS-VPC
  }
}

# 2. Create 2 Public Subnets
resource "aws_subnet" "Public-Subnet-1a" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.0.0/18"

  tags = {
    Name = var.AWS-PUB-SUB-01
  }
}

resource "aws_subnet" "Public-Subnet-1b" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.64.0/18"

  tags = {
    Name = var.AWS-PUB-SUB-02
  }
}

# 2. Create 2 Private Subnets
resource "aws_subnet" "Private-Subnet-1a" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.128.0/18"

  tags = {
    Name = var.AWS-PRI-SUB-01
  }
}

resource "aws_subnet" "Private-Subnet-1b" {
  vpc_id     = aws_vpc.my-vpc.id
  cidr_block = "10.0.192.0/18"

  tags = {
    Name = var.AWS-PRI-SUB-02
  }
}

# 3. Create IGW (Internet Gateway) & Attach to the VPC
resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = var.AWS-IGW
  }
}

# 4. Create Public Route Table
resource "aws_route_table" "Public-Route-Table" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = var.AWS-PUB-ROUTE
  }
}

# 5. Add IGW in Public Route table (0.0.0.0/0)
resource "aws_route" "PUB-ROUTE" {
  route_table_id            = aws_route_table.Public-Route-Table.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my-igw.id
}

# 4. Create Private Route Table
resource "aws_route_table" "Private-Route-Table" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = var.AWS-PRI-ROUTE
  }
}

# 8. Add NAT GW into the Private Route Table
resource "aws_route" "PRI-ROUTE" {
  route_table_id            = aws_route_table.Public-Route-Table.id
  destination_cidr_block    = "10.0.128.0/18"
  nat_gateway_id = aws_nat_gateway.My-Pub-Nat.id
}

# 6. Add Public Subnet (1a & 1b) in Route table
resource "aws_route_table_association" "Pub-Sub-Asso-a" {
  subnet_id      = aws_subnet.Public-Subnet-1a.id
  route_table_id = aws_route_table.Public-Route-Table.id
}

resource "aws_route_table_association" "Pub-Sub-Asso-b" {
  subnet_id      = aws_subnet.Public-Subnet-1b.id
  route_table_id = aws_route_table.Public-Route-Table.id
}


# 7. Create a NAT Gateway in Public Subnet
resource "aws_nat_gateway" "My-Pub-Nat" {
  allocation_id = aws_eip.lb.id
  subnet_id     = aws_subnet.Public-Subnet-1a.id

}

# 9. Add Private Subnet in Private Route Table
resource "aws_route_table_association" "Pri-Sub-Asso-1a" {
  subnet_id      = aws_subnet.Private-Subnet-1a.id
  route_table_id = aws_route_table.Private-Route-Table.id
}

resource "aws_route_table_association" "Pri-Sub-Asso-1b" {
  subnet_id      = aws_subnet.Private-Subnet-1b.id
  route_table_id = aws_route_table.Private-Route-Table.id
}


# Additional resource for EIP 
resource "aws_eip" "lb" {
  domain   = "vpc"
}