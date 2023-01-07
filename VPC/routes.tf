resource "aws_route" "r" {
  route_table_id            = "rtb-4fbb3ac4"
  destination_cidr_block    = "10.0.0.0/17"
}
  tags = {
    Name = "Public-rt"
  }
