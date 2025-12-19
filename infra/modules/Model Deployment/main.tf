resource "azurerm_cognitive_deployment" "example" {
  name                 = var.model_deployment_name
  cognitive_account_id = var.cognitive_account_id

  model {
    format  = var.model_format
    name    = var.model_kind
    version = var.model_version
  }

  sku {
    name = var.deployment_type
  }
}