module "test_s3_bucket" {

  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.14.0"

  bucket = var.bucket_name
  versioning = {
    enabled = var.enable_versioning
  }
}

module "app" {
  source  = "tfe.karla-gabriel.sbx.hashidemos.io/kg-dev/app/aws"
  version = "1.1.0"
}