#Resource Group
resource "azurerm_resource_group" "this" {
  name     = local.rgname
  location = var.location
  tags = {
    Client      = "OCC"
    Environment = "${var.env}"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = local.vnetname
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  address_space       = var.addrspace
}