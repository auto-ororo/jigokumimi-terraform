terraform {
  backend "s3" {
    bucket = "jigokumimi-terraform"
    key = "jigokumimi/ecr/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}