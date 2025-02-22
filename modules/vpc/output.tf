output "vpc_id" {
  value = aws_vpc.eks_vpc.id
}

output "public_subnet" {
  value = aws_subnet.public_subnet[*].id
}


