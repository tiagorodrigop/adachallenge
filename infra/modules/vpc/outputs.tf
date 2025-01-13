output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.main.id
}

output "private_subnets" {
  description = "Subnets privadas criadas"
  value       = aws_subnet.private[*].id
}

output "public_subnets" {
  description = "Subnets públicas criadas"
  value       = aws_subnet.public[*].id
}
