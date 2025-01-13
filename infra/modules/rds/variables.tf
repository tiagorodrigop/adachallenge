variable "vpc_id" {
  description = "ID da VPC onde o RDS será criado"
}

variable "private_subnets" {
  description = "Subnets privadas para o RDS"
}

variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
}

variable "db_user" {
  description = "Usuário do banco de dados"
  default     = "addbuser" 
  type        = string
}

variable "db_password" {
  description = "Senha do banco de dados"
  type        = string
}

variable "db_engine" {
  description = "Motor do banco de dados"
  type        = string
}

variable "db_instance_class" {
  description = "Classe da instância do banco de dados"
  type        = string
}

variable "backend_cidr_block" {
  description = "CIDR do backend que pode acessar o banco de dados"
  type        = string
}
