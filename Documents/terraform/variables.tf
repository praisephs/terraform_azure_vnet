# Resource group 
variable "resource_group_name" {
  type        = string
  default     = "cohort3-uyi-rg"
  description = "The Name which should be used for this Resource Group"
}

# Location information
variable "location" {
  type        = string
  default     = "eastus2"
  description = "The Azure Region where the Resource Group should exist"
}

# Tags informations
variable "tags" {
  type = map(string)
  default = {
    Owner        = "uyi"
    Environment  = "dev"
    Date_Created = "12/05/2023"
  }
}
# Create a virtual network within the resource group
resource "azurerm_virtual_network" "dev-vn-uyi" {
  name                = "dev-vn-uyi"
  resource_group_name = azurerm_resource_group.cohort3-uyi.name
  location            = azurerm_resource_group.cohort3-uyi.location
  address_space       = ["10.0.0.0/16"]
}

# Create a first subnet called subnet1
resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.cohort3-uyi.name
  virtual_network_name = azurerm_virtual_network.dev-vn-uyi.name
  address_prefixes     = ["10.0.1.0/24"]
}

# Create second subnet called subnet2
resource "azurerm_subnet" "subnet2" {
  name                 = "subnet2"
  resource_group_name  = azurerm_resource_group.cohort3-uyi.name
  virtual_network_name = azurerm_virtual_network.dev-vn-uyi.name
  address_prefixes     = ["10.0.2.0/24"]
}