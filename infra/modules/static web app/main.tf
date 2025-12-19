resource "azurerm_static_web_app" "example" {
  name                = var.swa_name
  resource_group_name = var.rg_name
  location            = var.swa_location

  sku_tier = "Free"
  sku_size = "Free"

  lifecycle {
    ignore_changes = [ repository_branch, repository_url ]
  }
}