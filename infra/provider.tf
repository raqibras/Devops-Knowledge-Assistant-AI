terraform{
    required_providers {
      azurerm = {
        source  = "hashicorp/azurerm"
        version = "4.55.0"
      }
    }
    required_version = ">=1.0.0"
}

provider "azurerm" {
  features {}
  subscription_id = "<YOUR_AZURE_SUBSCRIPTION_ID>"
}