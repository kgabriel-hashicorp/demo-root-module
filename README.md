# demo-root-module

## Overview
___
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
___
* Define the standards teams at American Express will follow when creating a root module
* Include the GitHub Actions that will automate the CI checks ensuring the quality of the module.
* Demonstrate Release Management process for root modules (consumers) to get the latest from child modules (producers)

## How To Use

In theory, teams who are starting out in making modules should be able to clone this repository
and start adding their infrastucture code.

## Worfklows / GitHub Actions
___
### terraform-docs
### terraform-fmt
### tflint
### CODEOwners Validator
### checkov

## Release Management / Getting New Versions

* This module relies on dependabot to manage the module dependencies.
* A PULL REQUEST will automatically be raised if there are new version of the child modules from either the public or private Terraform Registry.
* The PULL REQUEST will have to approved by the CODEOWNERS.

### What is Dependabot?


### Major
### Minor
### Patch
