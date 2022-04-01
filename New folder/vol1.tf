resource "aws_ebs_volume" "gouthi" {
  availability_zone = "ap-southeast-1a"
  size              = 15

  tags = {
    Name = "gouthi"
  }
}