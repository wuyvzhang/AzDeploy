provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-hello-azure-tf"
    storage_account_name = "githubazuretf"
    container_name       = "terraform-state"
    key                  = "tf.tfstate"
  }
}