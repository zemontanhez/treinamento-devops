variable "image_id" {
  type        = string
  description = "O id do Amazon Machine Image (AMI) para ser usado no servidor."

  validation {
    condition     = length(var.image_id) == 21 && substr(var.image_id, 0, 4) == "ami-"
    error_message = "O valor do image_id não é válido, tem que começar com \"ami-\" e conter 21 caracters."
  }
}

variable "subnet" {
  type        = string
  description = "Subnet "

  validation {
    condition     = length(var.subnet) == 24 && substr(var.subnet, 0, 7) == "subnet-"
    error_message = "O valor do subnet não é válido, tem que começar com \"subnet-\" e conter 24 caracters."
  }
}

variable "instance_type" {
  type        = string
  description = "Tipo da instancia "

  validation {
    condition     = length(var.instance_type) > 6 && (substr(var.instance_type, 0, 3) == "t2." || substr(var.instance_type, 0, 3) == "t3.")
    error_message = "O tipo da instância não é válido, tem que começar com \"t2.\" ou \"t3.\"."
  }
}

variable "Name" {
  type        = string
  description = "Nome da instancia "

validation {
    condition     = length(var.Name) > 1 
    error_message = "O nome da instância nao e valido, tem que conter ao menos dois caracteres."
  }
}

variable "Tamanho" {
  type        = string
  description = "Tamanho da instancia "

validation {
    condition     = (var.Tamanho=="8" || var.Tamanho=="16")
    error_message = "O tamanho da instância nao e valido, tem que 8 ou 16."
  }
}

variable "sec_group" {
  type        = string
  description = "Securite group da instancia "

validation {
    condition     = length(var.sec_group) == 19 && substr(var.sec_group, 0, 3) == "sg-"
    error_message = "O Securite group da instância nao e valido, tem que começar com sg- e conter 19 caracters"
  }
}

output "sec_group" {
    value = var.sec_group
}

output "image_id" {
    value = var.image_id
}

output "Tamanho" {
    value = var.Tamanho
}

output "subnet" {
    value = var.subnet
}

output "instance_type" {
    value = var.instance_type
}

output "Name" {
    value = var.Name
}
