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
