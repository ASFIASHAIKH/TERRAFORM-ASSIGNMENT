###THIS IS FOR SSH KEY PAIR

resource "aws_key_pair" "secure-key" {
  key_name   = var.M-SSH-KEY
  public_key = var.M-SSH-PUB
}