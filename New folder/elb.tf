resource "aws_elb" "myelb" {
  name               = "myelb-terraform-elb"
   subnets     = [aws_subnet.sn1.id,aws_subnet.sn2.id,aws_subnet.sn3.id]

 

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  }
  resource "aws_elb_attachment" "abc" {
  elb      = aws_elb.myelb.id
  instance = aws_instance.i1.id
}
