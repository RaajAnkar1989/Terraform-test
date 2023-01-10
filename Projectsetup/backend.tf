terraform {
  backend "s3" {
    bucket = "testbucket123489"
    key    = "demo/env/terraform.tfstate"
    region = "us-east-1"
  }
}
