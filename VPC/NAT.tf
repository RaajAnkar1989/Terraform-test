resource "aws_nat_gateway" "Test-NAT" {
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = "Test-NAT"
  }
}
