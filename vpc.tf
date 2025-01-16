resource "aws_vpc" "dev_vpc" {
  cidr_block       = "10.0.0.0/16"

  enable_dns_support   = true

  tags = {
    Name = "aws_vpc"
  }
}