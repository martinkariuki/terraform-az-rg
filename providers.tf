terraform {
  required_version = ">=1.1.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.6"   
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}

provider "random" {
}
