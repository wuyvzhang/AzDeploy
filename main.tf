provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "githubazuretf"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg-hello-azure0" {
  name     = "rg-hello-azure0"
  location = "northcentralus"
}

resource "azurerm_resource_group" "rg-hello-azure1" {
  name     = "rg-hello-azure1"
  location = "northcentralus"
}