required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "5.72.1"
  }
}

provider "aws" "this" {
  config {
    region = "us-east-1"

    assume_role_with_web_identity {
      role_arn           = var.role_arn
      web_identity_token = var.identity_token
    }
  }
}