# SAA 인강 정리

#IAM #SAA
# IAM
Identity and Access Management
- IAM은 글로벌 서비스 -> region에 국한되지 않음
- aws 계정 생성하면 default로 생성되는 root user


### user를 group에 추가하는 법
- group 생성
	- 권한 설정
- 생성한 group에 user 추가하면 됨
- AWS 계정 만들 때부터 root 유저인뎁 왜 IAM `user group` 따로 만드는지?
	- root 유저는 모든 권한을 가지고 있기에 root 유저와 비슷한 권한이 있는 Group의 유저가 되는게 안전하다 함
	- `AdministratorAccess`: root 권한과 거의 유사한 권한 -> admin 권한
- tag: 이름 | value: 설명
- user account ID allias
	- 유저 생성하면 account id 생기는데 숫자로 생겨서 보기편하게 닉네임 설정 가능
	- 어느 그룹에 속하든 계정 만들 때 생긴 user account는 동일
		- 하나의 계정이 여러 group에 있을 시 allias 다 적용될까?
			- 노노
- root 유저와 IAM 유저 비교하는 법
	- 콘솔화면 오른쪽 상단에서 `IAM USER: name` 이라고 뜸
 		


## IAM Policies inheritance
정책 상속
- 두 그룹에 속한 한 유저는 두 그룹의 권한을 상속 받음


## IAM Policies Structure
```json
{
	"Version": "2012-10-17", 			
	"Id": "s3 account permissions", // 정책 ID(optional)
	"Statement": [
		{
			"Sid":  "1", 			  				// statement 식별자(정책 문서 ID): A-Z, a-z, 0-9 중 하나만
			"Effect": "Allow", 				  //  statement의 접속 권한 명시(Allow, Deny)
			"Principal": {						 // account/user/role이 어느 정책에 적용되는지 명시 
				"AWS": ["arn:aws:iam::12345678(account ID):root"]
		},
		"Action": [								 // Effect가 적용되는 목록
			"s3:helloworld"
		],
		"Resource": ["arn:aws:s3:::zezebucket/*"]
		}
	]
}
```








			