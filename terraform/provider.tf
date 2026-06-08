
# BLOCK 1: terraform block
# → minimum terraform version required
# → which providers we need and their versions
# → where to store state file (backend)

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"   # official Azure provider by HashiCorp
      version = "~> 3.0"              # use any 3.x version
    }
  }

  # REMOTE BACKEND
  # State file stored in Azure Blob Storage
  # Every pipeline run reads/writes state from here
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "tfstategitopspoc"    # ← your storage account name
    container_name       = "tfstate"
    key                  = "poc.terraform.tfstate"  # name of state file in container
    use_azuread_auth      = true  # use Azure AD auth (no access keys needed)
  }
}

# BLOCK 2: provider block
# → configure the Azure provider
# → ARM_* environment variables automatically picked up
# → no credentials hardcoded here ✅

provider "azurerm" {
  features {}   # required block even if empty
}