resource "aws_nat_gateway" "Test-NAT" {
  allocation_id = "true"
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = "Test-NAT"
  }
}
