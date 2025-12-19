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

variable "rg_name" {
  type = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Location of the storage account"
}

variable "account_kind" {
  type = string
  description = "Tier of the storage kind"
  default = "StorageV2"
}