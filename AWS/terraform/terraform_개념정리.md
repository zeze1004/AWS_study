# 테라폼 끄적끄적
tf 파일이란?
—  HCL 언어로 만든 파일


## Terraform apply 후 생기는 일
작업 디렉토리 하단에 terraform.tfstate 파일이 생성
— 파일에는 실제 상태를 임시 저장
— 수정되지 않은 tf 파일은 tfstate이 변경되지 않아 apply 안됨


## testate 파일이란?
— 테라폼 상태 파일
Tfstate 파일은 테라폼 리소스가 실제 리소스의 표현으로 매핑되는 내용을
기록하는 사용자 정의 json 형식

테라폼을 실행할 때 마다 AWS의 최신 상태를 가져와 테라폼의 구성과 비교하여 변경된 사항 적용할지 결정해줌

/*plan*/명령의 출력은 상태 파일의 id를 통해 발견된 컴퓨터의 코드와 실제 세계에 배포된 인프라 간의 차이

## 실습
— 링크 추가하기
1. Vpc
2. S3


참고)
— 테라폼 업앤러닝(OREILLY)
— [테라폼(Terraform) 기초 튜토리얼: AWS로 시작하는 Infrastructure as Code | 44BITS](https://www.44bits.io/ko/post/terraform_introduction_infrastrucute_as_code)

