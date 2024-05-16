locals {
  bucket_arn_list      = var.bucket_arn_list
  sub_bucket_arn_list  = [for arn in var.bucket_arn_list : "${arn}/*"]
}