module "cloudfront_s3_cdn" {
  source      = "git@github.com:"
  namespace   = var.project_name
  environment = var.environment

  # cors_allowed_methods = ["GET", "HEAD", "PUT"]

  versioning_enabled                = false
  origin_force_destroy              = false
  cloudfront_access_logging_enabled = false
  cloudfront_access_log_prefix      = "cf-access-logs"
}
