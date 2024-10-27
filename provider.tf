terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "abhinak.fun-remote-state"
    key    = "k8-eksctl"
    region = "us-east-1"
    dynamodb_table = "abhinak.fun-remote-state"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}