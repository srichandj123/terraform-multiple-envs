#Resource Group
resource "azurerm_resource_group" "this" {
  name     = local.rgname
  location = var.location
  tags = {
    Client      = "OCC"
    Environment = "${var.env}"
  }
}
