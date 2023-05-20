# Defines the resource group variable
variable "my-rg" {
  description = "Name of the resource group"
  type        = string
  default     = "cohort3-uyi-rg"
}

# Defines the Azure location for the resource group
variable "location" {
  description = "Location for the network interface"
  type        = string
  default     = "eastus2"
}

# Defines the virtual network
variable "my-vnet" {
  description = "Name of the virtual network"
  type        = string
  default     = "dev-vnet-uyi"
  
}

variable "my-subnet" {
  description = "Name of my subnet"
  type        = string
  default     = "subnet1"
  
}

variable "my-nic" {
  description = "Name of the network interface card (NIC)"
  default     = "dev-nic"
}

variable "subnet-address-prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.0.0/24"]
}