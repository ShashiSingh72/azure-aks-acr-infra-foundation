resource "azurerm_virtual_network" "vnet" {
  name = var.vnetname
  location = var.location
  resource_group_name = var.rgname
  address_space = var.address_space
}

resource "azurerm_subnet" "sbnet" {
  name = var.subnetname
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name = var.rgname
  address_prefixes = var.address_prefixes
}



variable "vnetname" {
  
}
variable "location" {
  
}
variable "rgname" {
  
}
variable "address_space" {
  
}
variable "subnetname" {
  
}
variable "address_prefixes" {
  
}

