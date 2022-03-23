terraform {
 required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.0"
    }
  }
 backend "s3" {
    bucket = "amido-stacks-backend"
    key    = "compute"
    region = "eu-west-2"
  }

}

provider "aws" {
    region  = "eu-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-060c4f2d72966500a"
  instance_type = "t2.micro"
}