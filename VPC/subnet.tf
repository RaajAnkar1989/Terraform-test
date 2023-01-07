resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.0.0/17"

  tags = {
    Name = "Public-subnet"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.128.0/17"

  tags = {
    Name = "Private-subnet"
  }
}