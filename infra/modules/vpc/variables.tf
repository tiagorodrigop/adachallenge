variable "vpc_cidr" {
  description = "CIDR block para a VPC"
  type        = string
}

variable "private_subnets" {
  description = "CIDR blocks para as subnets privadas"
  type        = list(string)
}

variable "availability_zones" {
  description = "Zonas de disponibilidade para as subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "public_subnet_cidrs" {
  description = "Lista de CIDRs para as subnets públicas."
  type        = list(string)
}
