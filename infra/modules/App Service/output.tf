output "app_service_principal_id" {
  value = azurerm_linux_web_app.example.identity[0].principal_id
}