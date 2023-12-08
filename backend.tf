terraform {
  backend "remote" {
    organization = "kg-dev"
    hostname = "tfe.karla-gabriel.sbx.hashidemos.io"

    workspaces {
      name = "demo-root-module"
    }
  }
}