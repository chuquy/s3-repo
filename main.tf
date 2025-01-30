module "s3_buckets" {
  for_each = local.accounts

  source      = "./s3-repo" # Ruta al módulo
  providers   = { aws = each.value.provider }
  bucket_name = each.value.bucket_name
  environment = each.value.environment
}