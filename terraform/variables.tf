variable "resource_group_name" {
  description = "Name of the Azure Resource Group to create"
  type        = string
  default     = "rg-gitops-poc"
}

variable "location" {
  description = "Azure region where resource group will be created"
  type        = string
  default     = "East US"
  # Common values: "East US", "West Europe", "Southeast Asia"
}

variable "environment" {
  description = "Environment tag (dev / staging / prod)"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name used for tagging"
  type        = string
  default     = "gitops-poc"
}