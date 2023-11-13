module "sagemaker_assumable_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "~> 5.30.0"

  create_role           = true
  role_requires_mfa     = false
  role_name             = "sagemaker-custom-role"
  trusted_role_services = ["sagemaker.amazonaws.com"]
  custom_role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess",
    aws_iam_policy.sagemaker_custom_policy.arn,
  ]
}

resource "aws_iam_policy" "sagemaker_custom_policy" {
  name_prefix = "sagemaker-custom-policy"
  policy      = data.aws_iam_policy_document.sagemaker_custom_policy.json
}