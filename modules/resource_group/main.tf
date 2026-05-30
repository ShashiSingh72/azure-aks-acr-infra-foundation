resource "azurerm_resource_group" "rg" {
  name = var.rgname
  location = var.location
}

variable "rgname" {
  
}
variable "location" {
  
}

output "rgname" {
  value = azurerm_resource_group.rg.name
}

output "location" {
  value = azurerm_resource_group.rg.location
}
