variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}


variable "vpc_name" {
  description = "The name of the VPC."
  default = "tst"
}

variable "vpc_cidr" {
  description = "CIDR blocks for the VPCs"
  type        = string
  
}

variable "azs" {
  description = "A list of availability zones in the region."
  type        = list(string)  
}

variable "private_subnets" {
  description = "Private subnets for each environment"
  type        = list(string)

}

variable "public_subnets" {
  description = "Public subnets for each environment"
  type        = list(string)

} 

variable "name_ecs" {
  type = string
}

variable "name_rds" {
  type = string
}


variable "image_tag" {
  description = "Tag da imagem Docker"
  type        = string
  default     = "latest"  # Ajuste conforme necessário
}

# Variáveis específicas do ECR
variable "ecr_repository_name" {
  description = "Nome do repositório ECR"
  type        = string
  default     = "ecs-app-repository"  # Ajuste conforme necessário
}

variable "ecr_image_tag_mutability" {
  description = "Configuração de mutabilidade da tag de imagem do ECR"
  type        = string
  default     = "MUTABLE"
}

variable "ecr_scan_on_push" {
  description = "Indica se as imagens serão escaneadas após o push"
  type        = bool
  default     = true
}
