output "mainvpc" {
  value = aws_vpc.main
}

output "IGW" {
  value = aws_internet_gateway.gw
}

output "domain_names" {
  value = data.aws_route53_zone.this
}

output "az_w_1a" {
  value = aws_subnet.subnet_1
}

output "route" {
  value = aws_default_route_table.r
}

output "DNS" {
  value = data.aws_route53_zone.this
}

output "AMI" {
  value = data.aws_ami.latest_ecs
}

output "key_pair" {
  value = aws_key_pair.this
}