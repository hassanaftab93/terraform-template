provider "azurerm" {
  features {}
  # subscription_id = var.subscription_id
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
#   backend "azurerm" {
#     resource_group_name  = "tfstate"
#     storage_account_name = "tfstatesw0tf"
#     container_name       = "tfstate"
#     key                  = "terraform.tfstate"
  # }
}