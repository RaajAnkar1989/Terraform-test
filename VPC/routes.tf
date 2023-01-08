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
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table" "prt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "10.0.0.0/17"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "private-rt"
  }
  
  resource "aws_route_table_association" "prt" {
  subnet_id      = aws_subnet.main1.id
  route_table_id = aws_route_table.prt.id
}
}