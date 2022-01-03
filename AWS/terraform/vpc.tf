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