variable "bucket_names" {
  description = "Nombres personalizados de los buckets para cada cuenta"
  type        = map(string)
}

variable "environments" {
  description = "Ambientes para etiquetar el recurso (e.g., dev, prod)"
  type        = map(string)
}
