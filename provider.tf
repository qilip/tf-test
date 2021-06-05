terraform {
  backend "remote" {
    organization = "rootabyss"

    workspaces {
      name = "tf-test"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.44.0"
    }
  }
}

provider "aws" {
  profile = "terraform-test"
  region  = "ap-northeast-2"
}
