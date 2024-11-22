# Resource Group for Azure Resources
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
