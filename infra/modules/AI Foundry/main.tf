resource "azurerm_cognitive_account" "example" {
  name                = var.aif_name
  location            = var.aif_location
  resource_group_name = var.rg_name
  kind                = "AIServices"

  sku_name = "S0"

  custom_subdomain_name = var.aif_name


  project_management_enabled = true
  
  identity {
    type = "SystemAssigned"
    }
}

resource "azurerm_cognitive_account_project" "example" {
  name                 = var.aif_project_name
  cognitive_account_id = azurerm_cognitive_account.example.id
  location             = azurerm_cognitive_account.example.location
  description          = "AI Foundry Project"
  display_name         = var.aif_project_display_name

  identity {
    type = "SystemAssigned"
  }

  depends_on = [ azurerm_cognitive_account.example ]

}