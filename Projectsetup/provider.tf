 # terraform {
 #   backend "s3" {
 #     bucket = "raajankar"
 #     key    = "project/env/terrafom.tfstate"
 #     region = "us-east-1"
 #    }
 # }

provider "aws" {
    region = "us-east-1"
}


   # terraform {
   #   backend "s3" {
   #     bucket = "raajankar"
   #     key    = "project/env/terrafom.tfstate"
   #     region = "us-east-1"
   #    }
   # }