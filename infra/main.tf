#Resource Group
resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.rg_location
}

#App Service - Backend
module "app_service1" {
  source               = "./modules/App Service"
  resource_group_name = azurerm_resource_group.example.name
  location         = azurerm_resource_group.example.location
  app_service_name    = var.app_service_name
  asp_name            = var.asp_name
}

#Static Web App - Frontend
module "static_web_app1" {
  source        = "./modules/static web app"
  rg_name       = azurerm_resource_group.example.name
  swa_location   = azurerm_resource_group.example.location
  swa_name      = var.swa_name
}

#Storage Account
module "storage_account1" {
  source                    = "./modules/storage_account"
  rg_name                   = azurerm_resource_group.example.name
  location               = azurerm_resource_group.example.location
  storageaccountname        = var.storageaccountname
  account_replication_type  = var.account_replication_type
  account_tier              = var.account_tier
  account_kind             = var.account_kind
}

#AI Foundry and AI Search
module "ai_search1" {
  source                = "./modules/AI Search"
  search_service_name   = var.search_service_name
  rg_name               = azurerm_resource_group.example.name
  rg_location           = azurerm_resource_group.example.location
  sku                   = "standard"
  replica_count         = 1
  partition_count       = 1
}

module "ai_foundry1" {
  source                 = "./modules/AI Foundry"
  rg_name                = azurerm_resource_group.example.name
  aif_name               = var.aif_name
  aif_location           = var.aif_location
  aif_project_name       = var.aif_project_name
  aif_project_display_name = var.aif_project_display_name
}

#Model Deployments
module "model_deployment1" {
  source                  = "./modules/Model Deployment"
  cognitive_account_id    = module.ai_foundry1.cognitive_account_id  
  model_deployment_name   = var.model_deployment_name
  model_version           = var.model_version
  model_format            = var.model_format
  model_kind              = var.model_kind
  deployment_type         = var.deployment_type

}

module "model_deployment_embedding1" {
  source                  = "./modules/Model Deployment"
  cognitive_account_id    = module.ai_foundry1.cognitive_account_id  
  model_deployment_name   = var.embedding_model_deployment_name
  model_version           = var.embedding_model_version
  model_format            = var.embedding_model_format
  model_kind              = var.embedding_model_kind
  deployment_type         = var.embedding_deployment_type
}

#Role Assignment - For App Service to access AI Foundry and models
resource "azurerm_role_assignment" "app-AIFoundry" {
  principal_id         = module.app_service1.app_service_principal_id
  role_definition_name = "Cognitive Services OpenAI User"
  scope                = module.ai_foundry1.cognitive_account_id
  
}