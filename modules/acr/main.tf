resource "azurerm_container_registry" "acr" {
  name                = var.acrname
  resource_group_name = var.rgname
  location            = var.location
  sku                 = var.sku  #"Premium"
  admin_enabled       = var.admin_enabled  #false
  georeplications {
    location                = "eastus"
    zone_redundancy_enabled = true
    tags                    = {}
  }
  georeplications {
    location                = "eastus"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}

variable "acrname" {
  
}
variable "rgname" {
  
}
variable "location" {
  
}
variable "sku" {
  
}
variable "admin_enabled" {
  
}