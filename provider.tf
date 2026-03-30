terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  cloud {
    organization = "y-hcp"
    hostname     = "app.terraform.io"
    workspaces {
      name = "hcp-demo"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}