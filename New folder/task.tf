resource "aws_instance" "i7" {
     ami = "ami-055d15d9cfddf7bd3"
     instance_type = "t2.micro"
     subnet_id      = aws_subnet.sn1.id
	 tags = {
	 "Name" = "i7"
	 }
	 }
	 
	 resource "aws_eip" "lb" {
	 }
	 
	 resource "aws_eip_association" "lb" {
     instance_id = "aws_instance.i7.id"
     allocation_id = "aws_eip.lb.id"
}
	 