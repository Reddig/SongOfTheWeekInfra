# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "sotw-prod-terraform-state-management"
    dynamodb_table = "sotw-lock-table"
    encrypt        = true
    key            = "./terraform.tfstate"
    region         = "us-east-1"
  }
}

provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::471112828417:role/terraform"
  }
}