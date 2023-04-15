variable "main_region" {
  description = "AWS main region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

# variable "environment" {
#   description = "Environment name"
#   type        = string
# }

#---
#CICD S3
#---

variable "cicd_s3_name_attributes" {
  description = "Name defining the application"
  type        = list(string)
}

variable "github_repository" {
  description = "GitHub Respository name"
  type        = string
}

variable "github_branch" {
  description = "GitHub branch name"
  type        = string
}

variable "aws_chatbot_slack_arn" {
  description = <<EOF
  AWS ChatBot Slack client configuration ARN.
  ChatBot need to be done from console.
  EOF
  type        = string
  default     = null
}
