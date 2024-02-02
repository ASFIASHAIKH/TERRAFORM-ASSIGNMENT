###THIS IS FOR SSH KEY PAIR

output "SSH-KEY" {
  value = aws_key_pair.secure-key.key_name
}