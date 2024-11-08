terraform {

  cloud {
    organization = "team-rts"
    hostname     = "app.terraform.io" 

    workspaces {
      name = "tfc-dynamic-creds-aws"
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
