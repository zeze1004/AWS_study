# VPC 설정
provisioner "aws" {
	region = "ap-norheast-2"
}
resource "aws_vpc" "main" {
	# ip 대역
	cidr_block = "10.0.0.0/16"
	# 리소스 정보 설정
	tags = {
		Name = "vpc_terraform"
	}
}

#  Subnet 설정
resource "aws_subnet" "public_subnet" {
	# 위에서 지정한 vpc 지정
	vpc_id = aws_vpc.main.id
	cidr_block = "10.0.0.0/24"

	availability_zone = "ap-norheast-2a"

	tags = {
	  Name = "public-subnet"
	}
}
resource "aws_subnet" "private_subnet" {
	vpc_id = aws_vpc.main.id
	cidr_block = "10.0.10.0/24"

	tags = {
	  Name = "private-subnet"
	}
  
}

# 인터넷 게이트웨이
resource "aws_internet_gateway" "igw" {
	vpc_id = aws_vpc.main.id

	tags = {
	  Name = "main"
	}
}

# NAT 게이트웨이
resource "aws_eip" "nat" {
	vpc = true

	lifecycle {
		create_before_destroy = true
	}
}

# eip(엘라스틱 IP)
resource "aws_nat_gateway" "nat_gateway" {
	allocation_id = aws_eip.nat.id
	
	# priviate subnet이 아닌 public subnet을 연결해야 함
	subnet_id = aws_subnet.public_subnet.id

	tags = {
		Name = "NAT-GW-1"
	}
}