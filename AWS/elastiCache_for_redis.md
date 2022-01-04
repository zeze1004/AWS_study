# ElastiCache for Redis

[참고](https://docs.aws.amazon.com/ko_kr/AmazonElastiCache/latest/red-ug/Clusters.html)



### 클러스터

- 하나 이상의 캐시 노드 모음

- 모든 노드는 redis 캐시 엔진 소프트웨어 인스턴스 하나를 실행

- 클러스터 생성시 모든 노드에서 사용할 엔진과 버전을 지정



### 샤드

- 노드 그룹
- 단일 노드 redis 클러스터에는 샤드 없지만 다중 노드 레드스 클러스터에는 샤드가 1개 존재
- Redis 클러스터는 샤드에 노드가 1-6개 포함 가능