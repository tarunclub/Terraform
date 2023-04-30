variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = "ap-south-1"
}


resource "aws_instance" "redhat" {
  ami           = "ami-0fdea1353c525c182" # RHEL 8.4 x86_64 HVM
  instance_type = "t2.micro"
  key_name      = "ansible"

  tags = {
    Name = "my-redhat-instance"
  }

#   connection {
#     type        = "ssh"
#     user        = "ec2-user"
#     private_key = file("path/to/your/private/key")
#     host        = self.public_ip
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "sudo yum update -y",
#       "sudo yum install -y httpd",
#       "sudo systemctl start httpd",
#       "sudo systemctl enable httpd"
#     ]
#   }
}

resource "aws_s3_bucket" "mynotes" {
  bucket = "qt.s2.notes.com"
}