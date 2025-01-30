module "s3_bucket_account_a" {
  source      = "./s3-repo" # Ruta al módulo
  providers   = { aws = aws.account_a }
  bucket_name = var.bucket_names["account_a"]
  environment = var.environments["env_a"]
}