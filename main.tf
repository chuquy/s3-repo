locals {
  accounts = {
    "account_a" = {
      provider     = "aws.account_a"
      bucket_name  = var.bucket_names["account_a"]
      environment  = var.environments["env_a"]
    },
    "account_b" = {
      provider     = "aws.account_b"
      bucket_name  = var.bucket_names["account_b"]
      environment  = var.environments["env_b"]
    }
  }
}

module "s3_buckets" {
  for_each = local.accounts

  source      = "./s3-repo" # Ruta al módulo
  providers   = { aws = each.value.provider }
  bucket_name = each.value.bucket_name
  environment = each.value.environment
}