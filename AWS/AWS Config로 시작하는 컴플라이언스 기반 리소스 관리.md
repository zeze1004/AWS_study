# AWS Config로 시작하는 컴플라이언스 기반 리소스 관리

[해당 영상](https://www.youtube.com/watch?v=4VtMoNKx2tM) 보고 정리



## Compliance?

- 컴플라이언스 관리는 기업 및 규제 기관의 정책과 요구 사항 뿐 아니라 

  업계 표준을 준수하는 시스템을 만들기  위해

  지속적으로 시스템 모니터링하고 평가하는 프로세스

- 겪는 불편함
  1. 사내 표준 가이드대로 만들긴 했는데 어떻게 보장하지?
  2. 누군가의 실수로 잘못된 설정을 가진 리소스가 존재하면 어쩌지?
  3. 글로벌 서비스를 해야하는데 각 국가별 규정이 너무 많은데?



## Continuous Compliance with AWS

- 지속적인 컴플라이언스는 많은 cost를 아낄 수 있음
  - 정기적인 Audit(감사)을 위해 모두가 시간을 낼 필요가 X
  - 전통적인 컴플리언스는 다양한 부서와 정기적으로 가이드 회의를 해서 시간이 많기 뺐겼음
- 일 단위, 필요하다면 더 작은 단위로도 컴플라이언스 평가 가능
- 평가후 교정 액션을 활용하면 자동으로 위반된 리소스를 교정



## Compliance as Code

- 코드 기반의 체크리스트(규칙)
  1. 일관된 기준으로 리소스를 평가할 수 있음
  2. 기준이 변경된다면 코드를 수정하면 됨
  3. 평가 대상의 기준 준수여부를 빠르게 얻을 수 있음
- 마이크로 아키텍처에서는 다양한 기능들이 다양한 규칙(혹은 개발 정책)을 가지고 있기에 코드 기반으로 빠르게 규칙을 수정하는게 효율적임



## AWS Config Concepts

- 컨피그레이션 레코드로 각 서비스 별로 설정 정보 스냅샷
- 해당 스냇샷은 Configuration Isolation으로 저장
- AWS Config는 Configuration Isolation을 저장하는 인벤토리와 인벤토리를 평가하는 규칙으로 구성



## AWS Config Resource

- Supported Resource
- Unsupported Resource
  - Custom Rule을 사용해서 지원하지 않은 것도 사용할 수 있긴 함



## Resouce Inventory(TimeLine)

- 해당 리소스에 대한 CloudTrai Event,

  설정 변경사항, 컴플라이언스 변동사항에 대한 기록을 보여줌

- 생각보다 Audit 뿐만 아니라 History가 필요할 때 유용



















