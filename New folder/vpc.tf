resource "aws_vpc" "vpc1" {
  cidr_block = "10.0.0.0/16"
  tags={
  "name"="vpc1"
}
}
resource "aws_subnet" "sn1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-southeast-1a"

  tags = {
    Name = "sn1"
  }
}
resource "aws_subnet" "sn2" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.1.0/24"
   availability_zone = "ap-southeast-1b"

  tags = {
    Name = "sn3"
  }
  }
  resource "aws_subnet" "sn3" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.2.0/24"
   availability_zone = "ap-southeast-1c"

  tags = {
    Name = "sn3"
  }
}
resource "aws_subnet" "sn4" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.3.0/24"
   availability_zone = "ap-southeast-1a"

  tags = {
    Name = "sn4"
  }
  }
  resource "aws_subnet" "sn5" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.4.0/24"
   availability_zone = "ap-southeast-1b"

  tags = {
    Name = "sn5"
  }
  }
  resource "aws_subnet" "sn6" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.5.0/24"
   availability_zone = "ap-southeast-1c"

  tags = {
    Name = "sn6"
  }
  }
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name = "igw"
  }
}
resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }


  tags = {
    Name = "rt1"
  }
}
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.sn1.id
  route_table_id = aws_route_table.rt1.id
}
resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.sn2.id
  route_table_id = aws_route_table.rt1.id
}
resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.sn3.id
  route_table_id = aws_route_table.rt1.id
}