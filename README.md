# demo-root-module

### Overview
This repository contains the standards we recommend having for a root module in Terraform.

* Proper Terraform configuration files and formats
* Recommended CI Checks
* Release Management Implementation and Examples
* Module Ownership

This is a root module that will consume the terraform-aws-app module

### What is a root module?
* The terraform configuration that is actually applied and will have the terraform state.
* This is the top-level module that calls other modules (child modules)
* Usually called main.tf, this is where the infrastructure is defined and created

### Objectives
* Define the standards teams at American Express will follow when creating a root module
* Include the GitHub Actions that will automate the CI checks ensuring the quality of the module.
* Demonstrate Release Management process for root modules (consumers) to get the latest from child modules (producers)

### How To Use
In theory, teams who are starting out in making modules should be able to clone this repository
and start adding their infrastructure code.

## Release Management / Getting New Versions

* This module relies on dependabot to manage the module dependencies.
* A PULL REQUEST will automatically be raised if there are new version of the child modules from either the public or private Terraform Registry.
* The PULL REQUEST will have to approved by the CODEOWNERS.
* More details can be found under ` .github/workflows/README.md `

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_app"></a> [app](#module\_app) | tfe.karla-gabriel.sbx.hashidemos.io/kg-dev/app/aws | 3.0.1 |
| <a name="module_test_s3_bucket"></a> [test\_s3\_bucket](#module\_test\_s3\_bucket) | terraform-aws-modules/s3-bucket/aws | 3.15.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | S3 Bucket Name | `string` | `"kg-test-s3-bucket-for-fun"` | no |
| <a name="input_enable_versioning"></a> [enable\_versioning](#input\_enable\_versioning) | Enable S3 Versioning | `bool` | `true` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | `"us-east-1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->