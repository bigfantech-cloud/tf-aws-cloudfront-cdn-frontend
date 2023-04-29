module "cicd-frontend" {
  source  = "bigfantech-cloud/codepipeline-cicd/aws"
  version = "1.0.0"

  project_name = var.project_name
  #   environment = var.environment
  attributes = var.cicd_s3_name_attributes

  #---
  #CODEBUILD
  #---
  codebuild_cloudwatch_logs = false
  buildspec                 = file("./buildspec.yml")

  #---
  #CODEPIPELINE
  #---
  codestar_connection_arn = aws_codestarconnections_connection.github.arn
  aws_chatbot_slack_arn   = var.aws_chatbot_slack_arn
  vcs_repository          = var.vcs_repository
  vcs_branch              = var.vcs_branch
  deploy_provider         = "S3"

  deploy_config = {
    BucketName = module.cdn_cloudfront_s3.s3_bucket
    Extract    = "true"
  }

  depends_on = [
    module.cdn_cloudfront_s3
  ]
}
