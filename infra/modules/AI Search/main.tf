resource "azurerm_search_service" "search" {
  name                = var.search_service_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  sku                 = var.sku
  replica_count       = var.replica_count
  partition_count     = var.partition_count
  
}