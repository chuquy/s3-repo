module "s3_buckets" {
  count = length(local.accounts)

  source      = "./s3-repo" # Ruta al módulo
  providers  = { aws = local.accounts[count.index].provider } 
  bucket_name = local.accounts[count.index].bucket_name  
  environment = local.accounts[count.index].environment  
}