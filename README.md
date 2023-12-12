# demo-root-module

### Overview
This repository contains the standards we recommend having for a root module in Terraform.

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

## Worfklows / GitHub Actions

### Generate Docs

Uses `terraform-docs``, a plugin used to generate terraform documentation from the modules.

**Defaults**
* `README.md` will be updated with the documentation of the modules used
* Automatically commits document changes to README.md (See `Auto Commits` for more details)

### Format Code

Uses the formatter within terraform `terraform -fmt` to rewrite Terraform configuration files following a canonical format and style

**Defaults**
* Processes files in subdirectories (`-recursive`)
* Automatically commits format in place (See `Auto Commits` for more details)

### Lint Code

Uses tflint, a linter specifically designed to analyze Terraform code and identify issues, errors and any best practice violation.

**Defaults*
*  
### CODEOwners Validator
### checkov

## Release Management / Getting New Versions

* This module relies on dependabot to manage the module dependencies.
* A PULL REQUEST will automatically be raised if there are new version of the child modules from either the public or private Terraform Registry.
* The PULL REQUEST will have to approved by the CODEOWNERS.

### What is Dependabot?

* It is a free GitHub Featue that automatically updates dependencies.
* It ensures that your repository automatically keeps up with the latest releases of packages and applications it depends on
* This needs to be enabled on your o

### How does it work?

the `dependabot.yaml` file contains all the configurations you need. 

| Required Field | Second Header|
----------------| -------------
 | Content Cell   | Content Cell|
 | Content Cell   | Content Cell|

https://github.com/kgabriel-hashicorp/demo-root-module/blob/main/.github/dependabot.yaml


### Auto Commits

An additional step that is added to the workflow to automatically commit the changes it created.

| Required Field             | Corresponding Code | Default Value |
----------------------------| -------------   | -----------
 | User Name that will commit | `git config user.name`| GitHub Actions |
 | Email                      | `git config user.email` | actions@github.com |
 | Commit Message             | `git commit -m` | "fix: Auto format codebase"|


### Major
### Minor
### Patch
