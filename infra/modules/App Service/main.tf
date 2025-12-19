resource "azurerm_service_plan" "example" {
  name                = var.asp_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "F1"
}

resource "azurerm_linux_web_app" "example" {
  name                = var.app_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.example.id


  site_config {
    minimum_tls_version = "1.2"
    application_stack {
      python_version = "3.11"
    }
    always_on = "false"
  }
  identity {type = "SystemAssigned"}
  auth_settings {
    enabled = false
  }
  lifecycle {
    create_before_destroy = true
    ignore_changes = [ 
      app_settings,
      site_config[0].app_command_line
     ]


  }
}
