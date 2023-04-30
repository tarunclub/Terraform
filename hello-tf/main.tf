# Declare provider (AWS in this case)
provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "ap-south-1"
}

# Define EC2 instance resource
resource "aws_instance" "apache" {
  ami           = "ami-02eb7a4783e7e9317"
  instance_type = "t2.micro"
}

