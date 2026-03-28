terraform {
  required_providers {
    azurerm = {

      source  = "hashicorp/azurerm"
      version = "3.0.2"

    }
  }

}

provider "azurerm" {

  subscription_id = "69618a60-7b0d-4ead-bde5-911b183f9003"
  features {}

}


resource "azurerm_resource_group" "rg" {

  name     = "test"
  location = "eastus"
}