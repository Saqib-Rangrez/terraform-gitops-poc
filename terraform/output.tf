output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.main.name
  # azurerm_resource_group.main → references resource in main.tf
  # .name → attribute of that resource
}

output "resource_group_id" {
  description = "Full Azure resource ID"
  value       = azurerm_resource_group.main.id
}

output "resource_group_location" {
  description = "Location where resource group was created"
  value       = azurerm_resource_group.main.location
}