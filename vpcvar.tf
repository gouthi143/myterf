variable "vpc_cidr"{
type =string
default="10.0.0.0/24"
}
resource "aws_vpc" "vpcra"{
cidr_block =var.vpc_cidr

}
