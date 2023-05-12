output "vpc_02" {
  value = aws_vpc.vpc.id
}

output "vpc_01" {
  value = aws_vpc.vpc01.id
}

output "cidr_ip" {
  value = aws_vpc.vpc.cidr_block
}

