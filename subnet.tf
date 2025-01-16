resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

# Enable auto-assign public IP
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet_1"
  }
}

  resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1b"

# Enable auto-assign public IP
  map_public_ip_on_launch = true
  
  tags = {
    Name = "public_subnet_2"
  }
}
