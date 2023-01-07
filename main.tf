terraform {
   backend "remote" {
     organization = "ACG-Terraform-Labs"
     workspaces {
       name = "lab-migrate-state"
     }
   }

   required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "~> 4.23.0"
      }
   }
}

provider "aws" {
  region = “ap-south-1"
}
resource "aws_instance" "myFirstinstance" {
  ami = "ami-08df646e18b182346"
  instance_type = "t2.small”
tags = {
        Name = “my-ec2”
}
}
