# The resource group resource for extracting data
data "azurerm_resource_group" "my-rg" {
  name     = var.my-rg

}

# The virtual network resource for extracting data
data "azurerm_virtual_network" "my-vnet" {
  name                = var.my-vnet
  resource_group_name = data.azurerm_resource_group.my-rg.name
    
}

# The subnet resource for extracting information
data "azurerm_subnet" "my-subnet" {
  name                 = var.my-subnet
  virtual_network_name = data.azurerm_virtual_network.my-vnet.name
  resource_group_name  = data.azurerm_resource_group.my-rg.name
  
}

# Defines the interface network card to be created
resource "azurerm_network_interface" "my-nic" {
  name                = var.my-nic
  location            = data.azurerm_resource_group.my-rg.location
  resource_group_name = data.azurerm_resource_group.my-rg.name

  ip_configuration {
    name                          = "config1"
    subnet_id                     = data.azurerm_subnet.my-subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

output "subnet_id" {
  value = data.azurerm_subnet.my-subnet.id
}
