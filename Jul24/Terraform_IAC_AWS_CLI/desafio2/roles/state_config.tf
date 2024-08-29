terraform {
  backend "s3" {
    bucket  = "bia-s3-terraform"
    key     = "roles/terraform.tfstate"
    region  = "us-east-1"
    profile = "jason"
  }
}
