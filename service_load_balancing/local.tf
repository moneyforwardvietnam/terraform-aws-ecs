locals {
  enable_service_discovery       = var.enable_service_discovery
  service_discovery_registry_arn = var.enable_service_discovery && var.service_discovery_registry_arn != "" ? var.service_discovery_registry_arn : null
  bucket_arn_list                = var.bucket_arn_list
  sub_bucket_arn_list            = length(var.bucket_arn_list) > 0 ? [for arn in var.bucket_arn_list : "${arn}/*"] : ["arn:aws:s3:::xxxx"]
}
