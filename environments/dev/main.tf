module "resource_group" {
  source = "../../modules/resource_group"
  rgname = var.rgname
  location = var.location
}

module "network" {
    depends_on = [ module.resource_group ]
  source = "../../modules/network"
  vnetname = var.vnetname
  location = var.location
  rgname = var.rgname
  subnetname = var.subnetname
  address_space = var.address_space
  address_prefixes = var.address_prefixes
}

module "acr" {
    depends_on = [ module.resource_group , module.network]
  source = "../../modules/acr"
  acrname = var.acrname
  location = var.location
  rgname = var.rgname
  sku = var.sku
  admin_enabled = var.admin_enabled
}

module "aks" {
    depends_on = [ module.acr ]
  source = "../../modules/aks"
  aksname = var.aksname
  location = var.location
  rgname = var.rgname
  dns_prefix = var.dns_prefix

}