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

resource "aws_route_table" "prt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
    route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "private-rt"
  }
  
}