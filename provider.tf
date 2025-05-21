terraform {
  cloud {
    organization = "terraform_pr_mehnat"

    workspaces {
      name = "test"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
}

