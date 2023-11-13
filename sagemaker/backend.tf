terraform {
  backend "s3" {
    bucket = "jaz-sandbox-tfstate"
    key    = "sagemaker-prep.tfstate"
    region = "ap-southeast-1"
  }
}