terraform {
  cloud {
    organization = "sv8"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      tags = ["myterra", "source:cli"]
    }
  }
}


provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "example" {
  ami           =  "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"

tags = {
    Name = "terraform-example"
  }
