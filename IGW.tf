# Create Internet Gateways
resource "aws_internet_gateway" "my_terr_IGW" {

  tags = {
    Name = "for_terraformigw"
  }
}

# Attaching Internet gateways to Vpc
resource "aws_internet_gateway_attachment" "igw_to_vpc" {
  internet_gateway_id = aws_internet_gateway.my_terr_IGW.id
  vpc_id              = aws_vpc.My_new_DataCenter_terraform.id
}