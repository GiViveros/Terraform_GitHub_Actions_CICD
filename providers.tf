provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "gi-s3bucket-03march"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "gi-03March-dblocks"
    encrypt        = true
  }
}
