resource "aws_instance" "web" {

  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {

    Name = "terraform-beginner-ec2"

  }

}
