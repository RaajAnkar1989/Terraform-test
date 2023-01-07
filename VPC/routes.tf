resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "public-rt"
  }
  
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.a.id
}

resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "10.0.0.0/17"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "private-rt"
  }
  
  resource "aws_route_table_association" "a1" {
  subnet_id      = aws_subnet.main1.id
  route_table_id = aws_route_table.a1.id
}
}