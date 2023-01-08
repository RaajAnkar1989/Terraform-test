resource "aws_nat_gateway" "Test-NAT" {
  allocation_id = aws_eip.Test-NAT.id
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = "Test-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}

resource "aws_eip" "Test-NAT" {
  vpc      = true
}