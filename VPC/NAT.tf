resource "aws_nat_gateway" "Test-NAT" {
  allocation_id = aws_eip.Test-NAT.id
  subnet_id     = aws_subnet.main.id

  tags = {
    Name = "Test-NAT"
  }
}