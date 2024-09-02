terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "pspkdevops-remote-state"
    key    = "jenkins-terraform"
    region = "us-east-1"
    dynamodb_table = "pspkdevops-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}