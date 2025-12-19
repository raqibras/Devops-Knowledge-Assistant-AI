output "cognitive_account_id" {
  description = "The ID of the Cognitive Services Account"
  value       = azurerm_cognitive_account.example.id
}

output "aif_name" {
  description = "The name of AI Foundry resource"
  value = azurerm_cognitive_account.example.name
}