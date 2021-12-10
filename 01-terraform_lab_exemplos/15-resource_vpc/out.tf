#--------------------------OUTPUTS----------------------------#
output "maquina_aws" {
  value = [
    for web in aws_instance.web2 :
    <<EOF
          Name: ${web.tags_all.Name}
          ssh -i id_rsa ubuntu@${web.public_ip}
          Public ip: ${web.public_ip}
        EOF
  ]
}
#-------------------------------------------------------------------------------#
output vpc_id {
  value = aws_vpc.main.id
}
output int_gateway {
  value = aws_internet_gateway.gw.id
}
output route_table {
  value = aws_route_table.rt_terraform.id
}
output subnet_id_a {
  value = aws_subnet.my_subnet_a.id
}
output subnet_id_b {
  value = aws_subnet.my_subnet_b.id
}
output subnet_id_c {
  value = aws_subnet.my_subnet_c.id
}