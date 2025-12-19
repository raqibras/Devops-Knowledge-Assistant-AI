variable "search_service_name" {
  description = "The name of the Azure Search service"
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string
}

variable "rg_location" {
  description = "The location of the resource group"
  type        = string
  default     = "East US"
}

variable "sku" {
  description = "The SKU of the Azure Search service"
  type        = string
  default    = "free"
}

variable "replica_count" {
  description = "The number of replicas for the Azure Search service"
  type        = number
  default     = 1
}

variable "partition_count" {
  description = "The number of partitions for the Azure Search service"
  type        = number
  default     = 1
}
