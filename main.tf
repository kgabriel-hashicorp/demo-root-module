module "test_s3_bucket" {

  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.0.1"

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
  region = data.aws_region.current.name
}