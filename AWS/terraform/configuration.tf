terraform {
  required_version = "= 0.9.5"

  backend "s3" {
      # 이전에 생성한 버킷 이름으로 변경(암호화할 버킷)
      bucket = "s3_zeze"
      key = "example/terraform.tfstate"
      region = "us-east-2"

      # 잠금에 사용할 다이나모db 테이블 이름으로 변경
      dynamodb_table = "zeze_locks"
      encrypt = true                                # 테라폼 상태가 s3에 저장될 때 마다 파일 암호화
                                                    # 이미 s3 버킷도 암호화가 되어 있지만 2중 암호
  }
}