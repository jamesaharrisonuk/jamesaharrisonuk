# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_route_table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/main_route_table_association

resource "aws_default_route_table" "r" {
  default_route_table_id = aws_vpc.main.default_route_table_id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = { Name = "main" }
}

resource "aws_route_table_association" "eu_west_1a_public" {
  subnet_id  =  aws_internet_gateway.gw.id
  route_table_id = aws_default_route_table.r.id
}
