variable "ambiente" {
  description = "ambiente en el que se va a desplegar el ambiente"
  type = string
}

module "s3_bucket_account_a" {
  source      = "./s3-repo" # Ruta al módulo
  providers   = { aws = aws.account_a }
  bucket_name = var.bucket_names["account_a"]
  environment = var.environments["env_a"]
  count       = var.ambiente == "account_a" ? 1 : 0  # Se ejecuta solo si "ambiente" es "account_a"
}

module "s3_bucket_account_b" {
  source      = "./s3-repo" # Ruta al módulo
  providers   = { aws = aws.account_b }
  bucket_name = var.bucket_names["account_b"]
  environment = var.environments["env_b"]
  count       = var.ambiente == "account_b" ? 1 : 0  # Se ejecuta solo si "a" es "account_b"
}