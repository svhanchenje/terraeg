terraform {
  cloud {
    organization = "sv8"
    hostname = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      tags = ["ws-gpeKa7rs194fsxi8", "source:cli"]
    }
  }
}


provider "aws" {
  region = "ap-south-1"
  ACCESS_KEY=var.ACCESS_KEY
  SECRET_KEY=var.SECRET_KEY
}
  
resource "aws_instance" "example" {
  ami           =  "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"
}
  
  variable "ACCESS_KEY" {
  description = "The port the server will use for HTTP requests"
  }
  
  variable "SECRET_KEY" {
  description = "The port the server will use for HTTP requests"
  }
