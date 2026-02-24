terraform {
  required_providers {
    aws = {   #connecting to aws through aws
      source = "hashicorp/aws"
      version = "6.33.0"  #Aws terraform provider version
    }
  }
}

provider "aws" {
  region = "us-east-1"
}