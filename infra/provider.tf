terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  shared_config_files      = ["C:\\Users\\rudyv\\.aws\\conf"]
  shared_credentials_files = ["C:\\Users\\rudyv\\.aws\\credentials"]
  profile                  = "dev"
  region = "us-east-1"
}
