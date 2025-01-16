resource "aws_instance" "dev_server"{
  ami                    = "ami-053b12d3152c0cc71"
  instance_type          = "t2.micro"
  availability_zone      = "ap-south-1a"
  subnet_id              = aws_subnet.public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.main.id]

tags = {
    Name = "new_instance"
  }
}
