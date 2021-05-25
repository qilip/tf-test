terraform {
  backend "remote" {
    organization = "rootabyss"

    workspaces {
      name = "tf-test"
    }
  }
}

provider "aws" {
  profile = "terraform-test"
  region  = "ap-northeast-2"
}
