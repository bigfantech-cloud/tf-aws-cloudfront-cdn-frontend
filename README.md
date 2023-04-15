# Purpose:

Setup CloudFront-S3 CDN, with CICD, and CICD alert to Slack for Frontend.

## Resources created:

- CloudFront Distribution.
- S3 bucket.
- CICD: CodePipeline, CodeBuild Project.
- CodeStar Connection.
- Required IAM policies/Roles.

# Steps to create the resources

1. Download this repo code
2. Update variable inputs in terraform.tfvars.
3. Update the buildspec if necessary.
4. Apply the code.

   from terminal:

   ```
   terraform init
   ```

   ```
   terraform plan
   ```

   ```
   terraform apply
   ```

5. Complete CodeStar Connection in AWS Console
   - log in to AWS console
   - goto CodePipeline [CodeStar Connection](https://console.aws.amazon.com/codesuite/settings/connections)
   - CodeStar connection will be in pending state, complete the connection with the VCS to use
