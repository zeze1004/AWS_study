# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_cluster

# 레디스 인스턴스 예시
resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
}