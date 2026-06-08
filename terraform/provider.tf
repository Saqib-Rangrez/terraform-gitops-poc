# terraform/provider.tf

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstategitopspoc"
    container_name       = "tfstate"
    key                  = "poc.terraform.tfstate"
    use_azuread_auth     = true
  }
}

provider "azurerm" {
  features {}
}