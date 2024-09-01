terraform {
  backend "s3" {
    bucket  = "bia-s3-terraform"
    key     = "sec_grp/terraform.tfstate"
    region  = "us-east-1"
    profile = "jason"
  }
}
