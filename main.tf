terraform {

  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "githubazuretf"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}
provider "azurerm" {
  features {}
}