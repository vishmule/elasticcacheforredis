module "redis" {
  source  = "github.com/terraform-community-modules/tf_aws_elasticache_redis.git?ref=v2.2.0"

  env            = "dev"
  name           = "thtest"
  redis_clusters = "2"
  redis_failover = "true"
  subnets        = ["subnet-12345678", "subnet-11111111", "subnet-22222222"]
  vpc_id         = "vpc-12345678"

  redis_parameters = [{
    name  = "min-slaves-max-lag"
    value = "5"
  },{
    name  = "min-slaves-to-write"
    value = "1"
  },{
    name  = "databases"
    value = "32"
  }]
}
