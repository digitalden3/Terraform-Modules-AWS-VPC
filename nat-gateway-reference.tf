# Allocate Elastic IP. (This EIP will be used for the Nat-Gateway in the Public Subnet AZ1)
resource "aws_eip" "eip_for_nat_gateway_az1" {
  domain    =

  tags   = {
    Name =
  }
}

# Allocate Elastic IP. (This EIP will be used for the Nat-Gateway in the Public Subnet AZ2)
resource "aws_eip" "eip_for_nat_gateway_az2" {
  domain    =

  tags   = {
    Name =
  }
}

# Create Nat Gateway in Public Subnet AZ1
resource "aws_nat_gateway" "nat_gateway_az1" {
  allocation_id =
  subnet_id     =

  tags   = {
    Name =
  }

  # to ensure proper ordering, it is recommended to add an explicit dependency
  depends_on =
}

# Create Nat Gateway in Public Subnet AZ2
resource "aws_nat_gateway" "nat_gateway_az2" {
  allocation_id =
  subnet_id     =

  tags   = {
    Name =
  }

  # to ensure proper ordering, it is recommended to add an explicit dependency on the Internet Gateway for the VPC.
  depends_on =
}

# Create Private Route Table AZ1 and add route through Nat Gateway AZ1
resource "aws_route_table" "private_route_table_az1" {
  vpc_id            =

  route {
    cidr_block      =
    nat_gateway_id  =
  }

  tags   = {
    Name =
  }
}

# Associate Private Subnet AZ1 with Private Route Table AZ1
resource "aws_route_table_association" "private_subnet_az1_route_table_az1_association" {
  subnet_id         =
  route_table_id    =
}

# Create Private Route Table AZ2 and add route through Nat Gateway AZ2
resource "aws_route_table" "private_route_table_az2" {
  vpc_id            =

  route {
    cidr_block      =
    nat_gateway_id  =
  }

  tags   = {
    Name =
  }
}

# Associate Private Subnet AZ2 with Private Route Table AZ2
resource "aws_route_table_association" "private_subnet_az2_route_table_az2_association" {
  subnet_id         =
  route_table_id    =
}