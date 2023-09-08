# Create Route Table
resource "aws_route_table" "terraform_route_table" {
  vpc_id = aws_vpc.My_new_DataCenter_terraform.id
  tags = {
    name = "Terraform_route_table"
    createdBY = "Sreenivas"
  }
}

# attaching inernet gateway to route table
resource "aws_route" "public_route_terrform" {
  route_table_id = aws_route_table.terraform_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my_terr_IGW.id
}
# Attaching subnets to Route Table
resource "aws_route_table_association" "public_subnet" {
  subnet_id      = aws_subnet.terr_subnet_pub.id
  route_table_id = aws_route_table.terraform_route_table.id
}