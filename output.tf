output "cf_domain_name" {
  value       = module.cloudfront_s3_cdn.cf_domain_name
  description = "Domain name corresponding to the distribution"
}

output "s3_bucket" {
  value       = module.cloudfront_s3_cdn.s3_bucket
  description = "Name of origin S3 bucket"
}
