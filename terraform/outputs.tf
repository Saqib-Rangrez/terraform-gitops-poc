output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_id" {
  description = "Full Azure resource ID"
  value       = azurerm_resource_group.main.id
}

output "resource_group_location" {
  description = "Location where resource group was created"
  value       = azurerm_resource_group.main.location
}
