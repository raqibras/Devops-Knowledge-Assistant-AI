variable "model_deployment_name" {
  type        = string
  description = "Name of the model deployment"
}

variable "cognitive_account_id" {
  type        = string
  description = "The ID of the Cognitive Services Account"
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