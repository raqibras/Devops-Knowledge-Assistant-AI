output "static_web_app_url" {
  value = azurerm_static_web_app.example.default_host_name
}

output "swa_deployment_token" {
  value     = azurerm_static_web_app.example.api_key
  sensitive = true
}