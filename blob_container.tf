resource "azurerm_storage_account" "Recidivism_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  
  tags = {
    environment = "qa"
  }

}

resource "azurerm_storage_container" "Recidivism_container" {
  name                  = "recidivism-data"
  storage_account_id    = azurerm_storage_account.Recidivism_storage_account.id 
  container_access_type = "private"

}
