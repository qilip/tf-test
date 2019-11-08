terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "rootabyss"
    
    workspaces {
      name = "test"
    }
  }
}

provider "aws" {
  profile = "terraform-test"
  region = "ap-northeast-2"
}
