# Create a VPC
resource "aws_vpc" "My_new_DataCenter_terraform" {
  cidr_block = "172.16.0.0/16"
  tags = {
    Name = "created_by_terraform"
    createdBY = "Sreenivasulu"
  }
}





# Create Security Group
#resource "aws_security_group_rule" "terraform_sec_group" {
#  type              = "ingress"
#  from_port         = 0
#  to_port           = 65535
# protocol          = "tcp"
# cidr_blocks       = [aws_vpc.My_new_DataCenter.172.16.0.0/16]
# ipv6_cidr_blocks  = [aws_vpc.example.ipv6_cidr_block]
# security_group_id = "sg-123456"
#}
