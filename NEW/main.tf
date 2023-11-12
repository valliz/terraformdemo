terraform {
  backend "azurerm" {
    resource_group_name   = "rg-demo-we-val"
    storage_account_name  = "val12345val"
    container_name        = "tfstate"
    key                   = "test-terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "rg-demo-we-val-new"
  location = "West Europe"
}