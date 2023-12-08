variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "S3 Bucket Name"
  default     = "kg-test-s3-bucket-for-fun"
}

variable "enable_versioning" {
  description = "Enable S3 Versioning"
  default     = true
}