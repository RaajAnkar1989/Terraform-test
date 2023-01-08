resource "aws_nat_gateway" "Test-NAT" {
  allocation_id = enable
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = "Test-NAT"
  }
}
