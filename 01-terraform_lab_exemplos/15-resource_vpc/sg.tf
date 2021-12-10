resource "aws_security_group" "allow_ssh" {
  name        = "libera_ssh_ze_tf"
  description = "Allow SSH inbound traffic"
  vpc_id = aws_vpc.main.id  
  ingress = [
    {
      description      = "SSH from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
    #   cidr_blocks      = ["${chomp( data.http.myip.body )}/32"]
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids = null,
      security_groups = null,
      self            = null
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"],
      prefix_list_ids  = null,
      security_groups  = null,
      self             = null,
      description      = "Libera dados da rede interna"
    }
  ]

  tags = {
    Name = "libera_ssh_ze_tf"
  }
}
