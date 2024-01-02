module "test_s3_bucket" {

  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15.1"

  bucket = var.bucket_name
  versioning = {
    enabled = var.enable_versioning
  }
}

module "app" {
  source  = "tfe.karla-gabriel.sbx.hashidemos.io/kg-dev/app/aws"
  version = "6.0.0"
}

locals {
    account_id  = data.aws_caller_identity.current.account_id
    region      = data.aws_region.current.name
}