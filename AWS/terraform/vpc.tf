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