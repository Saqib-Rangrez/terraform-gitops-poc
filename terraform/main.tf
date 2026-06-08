# RESOURCE: Azure Resource Group
# azurerm_resource_group = resource type (from Azure provider)
# "main" = local reference name (we use this in outputs.tf)

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name   # reads from variables.tf
  location = var.location              # reads from variables.tf

  # Tags = metadata labels on Azure resource
  # Same concept as labels in K8s manifests
  # Helps with cost tracking, filtering, governance
  tags = {
    environment = var.environment
    project     = var.project_name
    managed_by  = "terraform"         # shows this was created by terraform
    created_by  = "github-actions"    # shows pipeline created it
  }
}