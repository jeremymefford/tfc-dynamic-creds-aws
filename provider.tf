terraform {

  cloud {
    organization = "weigand-hcp"
    hostname     = "app.terraform.io" 

    workspaces {
      name = "dynamic-creds-aws"
    }
  }

  required_providers {
    aws = {
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
