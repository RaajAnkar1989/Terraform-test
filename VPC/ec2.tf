resource "aws_instance" "NewServer" {
  ami           = "ami-00ff427d936335825" # us-east-1
  instance_type = "t2.micro"

}