terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.117.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "testdemoer"
    container_name       = "testfile"
    key                  = "test.terraform.tfstate"
  }
}

provider "azurerm" {

  subscription_id = "0b8a345f-5bb0-4af0-89af-77476d7c9b6f"
  features {}

}


resource "azurerm_resource_group" "rg" {

  name     = "test01"
  location = "eastus"
}