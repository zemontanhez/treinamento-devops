resource "aws_key_pair" "chave_key" {
  key_name   = "id_rsa"
  public_key = var.ssh_pub_key
  }