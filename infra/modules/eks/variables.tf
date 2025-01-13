variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "ada-challenge-eks"
}


variable "cluster_version" {
  description = "Versão do Kubernetes no cluster EKS"
  type        = string
}

variable "vpc_id" {
  description = "ID da VPC associada ao cluster EKS"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets associadas ao cluster EKS"
  type        = list(string)
}

variable "eks_managed_node_groups" {
  description = "Configurações dos Managed Node Groups"
  type        = any
  default     = {}
}

variable "tags" {
  description = "Tags para o cluster EKS"
  type        = map(string)
  default     = {}
}
