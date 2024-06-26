terraform {
  backend "s3" {

  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.1"
    }
  }

  required_version = "~> 1.3"
}

