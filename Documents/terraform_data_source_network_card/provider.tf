# Defines terraform provider and version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"

    }
  }
}
# # Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

#   subscription_id = "d0dc673b-91bc-4da2-9496-aa11379093f3"
#   tenant_id       = "d6dc1d4c-6763-4d5f-b621-9f455dc54ce6"
}



