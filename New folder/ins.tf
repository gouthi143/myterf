
resource "aws_instance" "i1" {
     ami = "ami-055d15d9cfddf7bd3"
     instance_type = "t2.micro"
     subnet_id      = aws_subnet.sn4.id
	 vpc_security_group_ids =["sg-086eee861d14fb198"]
	 tags = {
	 "Name" = "i1"
	 }
	 }
resource "aws_instance" "i2" {
     ami = "ami-055d15d9cfddf7bd3"
     instance_type = "t2.micro"
     subnet_id      = aws_subnet.sn5.id
	 vpc_security_group_ids =["sg-086eee861d14fb198"]
	 tags = {
	 "Name" = "i2"
	 }
	 }
resource "aws_instance" "i3" {
     ami = "ami-055d15d9cfddf7bd3"
     instance_type = "t2.micro"
     subnet_id      = aws_subnet.sn6.id
	 vpc_security_group_ids =["sg-086eee861d14fb198"]
	 tags = {
	 "Name" = "i3"
	 }
	 }
