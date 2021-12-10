provider "aws" {
  region = "sa-east-1"
}

resource "aws_key_pair" "chave_key" {
  key_name   = "chave_key_ze_tf"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/96ilpS63BuOdtmWp3LtRUg5hvFGfhHz2v5SM7bi/h0Mm4am/Bzc4SoldpsE2CNkdiqCYMQVJ3Dpo/ROXUP/w57NsdrqUrH27clc8ixDN8sYzSENkjXKnPB/v5zCWE1ds4VH72yRDrce9DuOPZPCZ3cGf3ASSWoz90KLa1f+BWai8i4YyyY/YPhDrmB180IBALUfqg6grEDJvvQPx4yP3/IFj/Alu97R+5juziLNpXsGqrfdBEp+D5BEJQUevDOqz0+LL302HAlEiYA1qh4+FoH7awF5NAuDZdMjXV/ACQbsnvRV/mS60t5ugI99gKGu9K9u11EpSVag2Qud5e3aiO1PelObnRt/S5TFP+rOlLkP8WprXBpqHnF8nvGJe8LVPtIxtlxhIlsyiiAgd2I77qwzHctiFxOV1GBtXEgx1xmjhrMbqGbr8myDrvZhuHgL15t6EGUgHzXJkrBbh3KiNpJTiUfjZlkPWJ3mDWwD69BDU3o55n7Oy/XS8S77jDhk= ubuntu@montanhez-dev" # sua chave publica da maquina 
}