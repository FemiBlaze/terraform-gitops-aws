resource "aws_instance" "web" {
  ami           = "ami-0b6c6ebed2801a5cb"
  instance_type = "t3.micro"

  subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = file("../user-data/install-nginx.sh")

  tags = {
    Name = "gitops-ec2"
  }
}

