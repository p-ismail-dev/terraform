terraform {
  required_providers {
    aws = {   #connecting to aws through aws
      source = "hashicorp/aws"
      version = "6.33.0"  #Aws terraform provider version
    }
  }

  backend "s3" {
    bucket         = "ismail-storage-88s"
    key            = "locals-demo.tfstate"
    region         = "us-east-1"  
    encrypt        = true
    use_lockfile   = true
  }
}

provider "aws" {
  region = "us-east-1"
}