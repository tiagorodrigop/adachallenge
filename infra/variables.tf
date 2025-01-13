variable "aws_region" {
  description = "Região da AWS onde os recursos serão criados"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block para a VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "CIDR blocks para as subnets públicas"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "private_subnets" {
  description = "CIDR blocks para as subnets privadas"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
  default     = "mydb" # Substitua pelo nome desejado
}

variable "db_user" {
  description = "Usuário do banco de dados"
  type        = string
  default     = "db_master_user" # Substitua pelo usuário desejado
}

variable "db_password" {
  description = "Senha do banco de dados"
  type        = string
  default     = "mypassword" # Substitua pela senha desejada
}

variable "backend_cidr_block" {
  description = "CIDR do backend que pode acessar o banco de dados"
  type        = string
  default     = "10.0.0.0/16" # Ajuste conforme necessário
}

variable "public_subnet_cidrs" {
  description = "Lista de CIDRs para subnets públicas"
  type        = list(string)
}
