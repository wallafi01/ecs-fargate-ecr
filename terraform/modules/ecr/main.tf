resource "aws_ecr_repository" "this" {
  name                 = var.repository_name
  image_tag_mutability = var.image_tag_mutability

  tags = {
    Environment = var.environment
  }
}

output "repository_url" {
  value = aws_ecr_repository.this.repository_url
}
