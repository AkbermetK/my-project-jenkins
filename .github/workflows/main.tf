terraform {
  backend "s3" {
    bucket                  = "terraform-s3-ak"
    key                     = "my-terraform-project"
    region                  = "us-east-2"
    shared_credentials_file = "~/.aws/credentials"
  }
}

provider "aws" {
  region   = "us-east-2"
}

resource "aws_ecr_repository" "my_ecr" {
    name = "bar"
    image_tag_mutability = "IMMUTABLE"

    image_scanning_configuration {
      scan_on_push = true
    }
}
