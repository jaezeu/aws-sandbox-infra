terraform {
  backend "s3" {
    bucket = "jaz-sandbox-tfstate"
    key    = "personal-vpc.tfstate"
    region = "ap-southeast-1"
  }
}