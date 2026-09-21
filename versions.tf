terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "multi-env-eval-tf-state-backend-12345"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "multi-env-terraform-state-locks"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
