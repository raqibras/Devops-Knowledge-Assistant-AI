variable "rg_name" {
  description = "The name of the resource group"
  type        = string
}

variable "rg_location" {
  description = "The location of the resource group"
  type        = string
  default = "East US"
}

variable "storageaccountname" {
  type        = string
  description = "Name of the storage account"
}

variable "account_replication_type" {
  type        = string
  description = "Replication type of the storage account"
  default = "LRS"
}

variable "account_tier" {
  type        = string
  description = "Tier of the storage account"
  default = "Standard"
  
}

variable "account_kind" {
  type        = string
  description = "Kind of the storage account"
  default = "StorageV2"
}

variable "app_service_name" {
  type = string
  description = "Name of the app service"
}

variable "asp_name" {
  type = string
  description = "Name of app service plan"
}

variable "swa_name" {
  type        = string
  description = "Name of the static web app"
}

variable "aif_name" {
  type        = string
  description = "Name of the AI Foundry instance"
}

variable "aif_location" {
  type        = string
  description = "Location of the AI Foundry instance"
}

variable "aif_project_name" {
  type        = string
  description = "Name of the AI Foundry project"
}

variable "aif_project_display_name" {
  type        = string
  description = "Display name of the AI Foundry project"
}

variable "model_deployment_name" {
  type        = string
  description = "Name of the model deployment"
}


variable "model_format" {
  type        = string
  description = "Format of the model (e.g., OpenAI)"
  default     = "OpenAI"
}

variable "model_kind" {
  type        = string
  description = "Kind of the model (e.g., gpt-4o)"
  default     = "gpt-4o-mini"
}

variable "model_version" {
  type        = string
  description = "Version of the model"
}

variable "deployment_type" {
  type = string
  description = "Type of deployment (e.g., GlobalStandard)"
  default = "GlobalStandard"
}

variable "search_service_name" {
  description = "The name of the Azure Search service"
  type        = string
}

variable "ais_sku" {
  description = "The SKU of the Azure Search service"
  type        = string
  default    = "free"
}

variable "ais_replica_count" {
  description = "The number of replicas for the Azure Search service"
  type        = number
  default     = 1
}

variable "ais_partition_count" {
  description = "The number of partitions for the Azure Search service"
  type        = number
  default     = 1
}

variable "embedding_model_deployment_name" {
  type        = string
  description = "Name of the embedding model deployment"
}

variable "embedding_model_kind" {
  type        = string
  description = "Kind of the embedding model (e.g., text-embedding-3-small)"
  default     = "text-embedding-3-small"
}

variable "embedding_model_version" {
  type        = string
  description = "Version of the embedding model"
} 

variable "embedding_deployment_type" {
  type = string
  description = "Type of deployment for embedding model (e.g., GlobalStandard)"
  default = "GlobalStandard"
}

variable "embedding_model_format" {
  type        = string
  description = "Format of the embedding model (e.g., OpenAI)"
  default     = "OpenAI"
}