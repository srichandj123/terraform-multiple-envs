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

resource "azurerm_storage_account" "stg" {
  name                     = "jakkastg123tftest"
  location                 = azurerm_resource_group.this.location
  resource_group_name      = azurerm_resource_group.this.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}