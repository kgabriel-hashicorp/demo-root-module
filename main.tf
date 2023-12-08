module "test_s3_bucket" {

  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.14.0"

  bucket = var.bucket_name
  versioning = {
    enabled = var.enable_versioning
  }
}