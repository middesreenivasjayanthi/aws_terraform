# Create aws public subnet
resource "aws_subnet" "terr_subnet_pub" {
  vpc_id     = aws_vpc.My_new_DataCenter_terraform.id
  cidr_block = "172.16.1.0/24"

  tags = {
    Name = "public_terraform_subnet"
    createdby = "sreenivas"
  }
}

# Create aws private subnet
resource "aws_subnet" "terr_subnet_private" {
  vpc_id     = aws_vpc.My_new_DataCenter_terraform.id
  cidr_block = "172.16.2.0/24"

  tags = {
    Name = "private_terraform_subnet"
    createdby = "sreenivas"
  }
}