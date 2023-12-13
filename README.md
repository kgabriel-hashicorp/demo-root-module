# demo-root-module

### What is a root module?
* The terraform configuration that is actually applied and will have the terraform state.
* `.tf` files in your working directory form the `root module`
* This is the top-level module that calls other modules (child modules)

### Structure of a Root Module

**Resources Configuration file (`main.tf`)**
* Defines the resources and configurations the module will create
* Primary entry point of your module
* For simple modules `main.tf` is sometimes used. 
* It is recommended to name this file more intuitively (ie `ec2.tf` or `s3.tf`) depending on what's being deployed

**Variable Definitions (`variables.tf`)**
* Where to declare input variables for the module
* Allows you to customize your Terraform module without altering the source code

**Output Definitions (`outputs.tf`)**
* Ouputs are information that's extracted from your infrasture after it's created (i.e. ARN)
* This file is used to define outputs of your root module
* The outputs you exposed can be used in other parts of your Terraform configuration.

**Variable Definitions (`.tvars`)**
* This file allows you to specify values for the variables declared in `variables.tf`
* For testing locally, you can create environment specific .tvars and run them with `terraform plan`
  * eg: using dev.tvfars (with dev values) `terraform plan -var-file=dev.tfvars`

**Backend Configuration (`backend.tf`)**
* File used to configure the backend where Terraform stores its state
* Terraform uses the state file to track the current state of your infrastructure.
* By default, if you don't specify a backend.tf file it will use `local`

For Amex:
```
  terraform {
    backend "remote" {
      hostname = "tfe.aexp.com" 
      organization = "aexp"
    }

    workspaces {
      name = "${corresponding_workspace}"
    }
  }
```

**Provider Configuration (`provider.tf`) **
* File used to configure the provider/s for your infrastructure.
* A provider is responsible for interacting with the API of your infrastructure source like AWS, GCP, Azure etc.

## Module Ownership #
It is required that there's a CODEOWNERS file that has a valid GitHub Username / Team
Not only is CODEOWNERS used for PR approvals it is also used to track the owners/maintainers of the module.

_Note: Do we want to make sure it's a team? We can add checks_

## Release Management / Getting New Versions

* This module relies on dependabot to manage the module dependencies.
* A PULL REQUEST will automatically be raised if there are new versions of the child modules from either the public or private Terraform Registry.
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