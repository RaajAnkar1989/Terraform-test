data "aws_ami" "my_ami" {
  most_recent      = true
  owners           = ["self"]
}
