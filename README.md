# demo-root-module

## Overview
This repository contains the standards we recommend having for a root module in Terraform.

* Recommended CI Checks
* Release Management Implementations and examples
* Module Ownership

This is a root module that will consume the terraform-aws-app module

### What is a root module?
* The terraform configuration that is actually applied and will have the terraform state.
* This is the top-level module that calls other modules (child modules)
* Usually called main.tf, this is where the infrastructure is defined and created


## Objectives
* Define the standards teams at American Express will follow when creating a root module
* Include the GitHub Actions that will automate the CI checks ensuring the quality of the module.
* Demonstrate Release Management process for root modules (consumers) to get the latest from child modules (producers)

## Worfklows / GitHub Actions
### terraform-docs
### terraform-fmt
### tflint
### CODEOwners Validator
### checkov
