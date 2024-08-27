#podemos trocar a versao de ipv4 para ipv6
#ipv4 4.16"
#ipv6 5.53"
#terraform init -upgrade
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.53"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
  profile = "patcprado"
}
