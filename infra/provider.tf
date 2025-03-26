terraform {
  required_providers {
    aws = {
        source = "shahicorp/aws"
        version = "~> 5.0"
        shared_config_files = ["C:\\Users\\rudyv\\.aws\\config"]
        shared_credentials_files = ["C:\\Users\\rudyv\\.aws\\credentials"]
        profile = "dev"
        region = "us-east-1"
    }
  }
}