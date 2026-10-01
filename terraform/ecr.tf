resource "aws_ecr_repository" "app" {
  name                 = "devops-platform"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "devops-platform"
    Project     = "aws-cloud-native-devops"
    Environment = "dev"
  }
}
