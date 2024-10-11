terraform {
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
    azapi = {
      source  = "azure/azapi"
      version = "=1.15.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "githubazuretf"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}
provider "azurerm" {
  features {
    key_vault {
      purge_soft_deleted_hardware_security_modules_on_destroy = true
      recover_soft_deleted_secrets          = true
    }
  }
}