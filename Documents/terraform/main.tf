# Create a resource group 
resource "azurerm_resource_group" "cohort3-uyi" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}



