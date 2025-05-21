terraform {
  cloud {
    organization = "terraform_pr_mehnat"

    workspaces {
      name = "terraform-cloud"
    }
  }
}


provider "aws" {
  region     = var.region
}

