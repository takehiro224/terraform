# ------------------------------
# Terraform configuration
# ------------------------------
terraform {
  required_version = ">=0.13" # terraformのバージョン指定
  required_providers {        # 「=」が必要ない
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

# ------------------------------
# Provider
# ------------------------------
provider "aws" {
  profile = "terraform"
  region  = "ap-northeast-1"
}

# ------------------------------
# Variables
# ------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}