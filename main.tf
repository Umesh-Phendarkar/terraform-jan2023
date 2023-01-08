provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "myFirstinstance" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.small"
  tags = {
    Name = "my-ec2"
  }
}
