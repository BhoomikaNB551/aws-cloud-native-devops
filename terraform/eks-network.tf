resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "${var.aws_region}b"
  map_public_ip_on_launch = true

  tags = {
    Name                               = "aws-devops-public-subnet-2"
    Project                            = "aws-cloud-native-devops"
    "kubernetes.io/role/elb"           = "1"
    "kubernetes.io/cluster/devops-eks" = "shared"
  }
}

resource "aws_route_table_association" "public_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public.id
}
