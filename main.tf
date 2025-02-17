module "s3_bucket_account" {
  source      = "./s3-repo" # Ruta al módulo
  providers   = { aws = aws.account_b }
  bucket_name = var.bucket_names["account_b"]
  environment = var.environments["env_b"]
}