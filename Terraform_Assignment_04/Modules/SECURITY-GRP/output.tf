###THIS IS FOR SECURITY GROUP

output "SEC-GRP" {
  value = aws_security_group.M-SG.name
}