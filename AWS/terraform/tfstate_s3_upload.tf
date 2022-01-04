# 테라폼 상태 파일을 s3 버킷에 저장, dynamoDB를 사용해 s3 암호화

# aws를 공급자로 지정
provider "aws" {
  region = "us-east-2"
}

provider "aws_s3_bucket" "terraform_state_zeze" {
    bucket = "zeze_S3"

    # 실수로 s3 버킷을 삭제하는거 방지
    lifecycle {
        prevent_destroy = true
    }

    # 코드 이력을 관리하기 위해 상태 파일의 버전 관리를 활성화
    # 버킷의 파일이 업데이트될 때마다 새 버전을 만들도록 함 -> 언제든지 이전 버전으로 되돌릴 수 있음
    versioning {
        enabled = true
    }

    # 서버 측 암호화를 활성화
    # s3 버킷에 기록된 모든 데이터 숨길 수 있음
    server_side_encryption_configuration {
        rule {
            apply_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }
}

# 테라폼 상태 관리 lock table을 위해 dynamoDB 테이블 생성
resource "aws_dynamodb_table" "terraform_locks" {
    name = "zeze_locks"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
}