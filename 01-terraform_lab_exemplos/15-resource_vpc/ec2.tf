data "aws_ami" "ubuntu" {
  # most_recent = true
  owners = ["099720109477"] # ou ["099720109477"] ID master com permissão para busca
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # exemplo de como listar um nome de AMI - 'aws ec2 describe-images --region us-east-1 --image-ids ami-09e67e426f25ce0d7' https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html
  }
  most_recent = true
}

resource "aws_instance" "web2" {
  subnet_id                   = aws_subnet.my_subnet_a.id
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.chave_key.key_name # a chave que vc tem na maquina pessoal
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${aws_security_group.allow_ssh.id}"]
  root_block_device {
    encrypted   = true
    volume_size = var.tamanho
  }
  count = var.qtde
  tags = {
    Name = "${var.pre_name}-${var.Name}-${count.index}"
    #Tag2 = "Tag teste - ${var.maquinas[keys(var.maquinas)[count.index]]}"
  }
  depends_on = [
    aws_key_pair.chave_key
  ]
}

