resource "aws_eks_cluster" "main" {
  name     = "devops-eks"
  role_arn = aws_iam_role.eks_cluster.arn

  vpc_config {
    subnet_ids = [
      aws_subnet.public.id,
      aws_subnet.public_2.id
    ]

    endpoint_public_access  = true
    endpoint_private_access = false
  }

  tags = {
    Name        = "devops-eks"
    Project     = "aws-cloud-native-devops"
    Environment = "dev"
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy
  ]
}
