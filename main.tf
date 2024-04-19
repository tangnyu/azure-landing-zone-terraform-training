# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.7"
    }
  }

  required_version = ">= 1.1.0"
}

variable "deployment_env" {
  type = string
}


