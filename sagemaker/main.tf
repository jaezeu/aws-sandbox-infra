resource "aws_s3_bucket" "example" {
  bucket = "jaz-sagemaker-${formatdate("YYYYMMDDhhmmss", timestamp())}"
}

resource "aws_sagemaker_notebook_instance" "instance" {
  name          = "sagemaker-instance"
  role_arn      = module.sagemaker_assumable_role.iam_role_arn
  instance_type = "ml.t3.medium"
}