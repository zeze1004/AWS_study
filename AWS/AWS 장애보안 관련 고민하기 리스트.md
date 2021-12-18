# AWS 장애/보안 관련 고민하기 리스트



## SSH 외에 접속하는 방법은 무엇일까

### SSH와 pem 키

- SSH는 공개키와 개인키를 비교하는 보안 프로토콜인데 pem키는 개인키!
- 추가하기



### ec2 디스크 풀인 상황에서 접속하는 법은 무엇일까

[출처](https://itzone.tistory.com/717)

> 헉 사실 이해는 잘 안 가는데 대충 스냅샷 만들어서 스냅샷보다 더 큰 볼륨을 root에 마운트해서 인스턴스 디스크 일시적으로 확장시켜서 들어간 다음에 resize2fs로 확장 작업을 하는 과정...?

후후 천천히 이해해보도록 하잡



### ssh에 MFA 거는 법

## MFA란?

[AWS 공식 문서](https://docs.aws.amazon.com/ko_kr/IAM/latest/UserGuide/id_credentials_mfa.html)

- 다단계 인증방식으로 기존 로그인에 추가로, 스마트폰 같은 개인 하드웨어로 자격 인증하는 방법



\- IAM에 MFA 설정하는 법

[출처](https://itzone.tistory.com/729?category=617748)

> 히히 어려웡

- policy 영역에서 json으로 설정 추가하기



### U2F, TT... 보안법에 관해 더 찾아보기!

[AWS 공식 문서](https://docs.aws.amazon.com/ko_kr/IAM/latest/UserGuide/id_credentials_mfa_enable_u2f.html)

> 앗항 MFA에 여러 유형이 있었는데 그 중 하나구나

U2F는 공인인증서처럼 USB에 설치된 U2F 보안 키로 MFA 인증을 하는 방법이구낭



### 시큐리티 그룹 IP 대역 찾아보기

특정 IP, 네트워크 대역만이 서버에 접근할 수 있도록 제어하는 것을 접근 제어라고 함 

접근 제어는 허가된 IP나 네트워크만이 SSH에 접속할 수 있음

접근 제어에는 Appliance FW 같은 보안장비를 사용하는 방법 외에도, 직접 iptable이나 hosts.allow 및 hosts.deny를 설정하는 방법이 있다함....

그것은 무슨 방법인가요...?🤯 

Iptable은 사용하는 서비스 port만 등록하여 방화벽으로써 역할을 수행하며, hosts.allow와 hosts.deny는 각각 접속 허용과 차단 여부를 설정할 수 있다고 함!

호호 차근차근 찾아보자^ㅠ^

[출처](https://library.gabia.com/contents/infrahosting/9002/)