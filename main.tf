#Resource Group
resource "azurerm_resource_group" "this" {
  name     = local.rgname
  location = var.location
  tags     = local.common_tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = local.vnetname
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = var.addrspace
}

module "caf_lb" {
  source         = "aztfmod/caf/azurerm//modules/networking/lb"
  version        = "5.7.12"
  name           = "jakka-lb"
  resource_group = azurerm_resource_group.this.name
  region         = azurerm_resource_group.this.location
  # insert the 5 required variables here
}