output "remote_name" {
  value       = azurerm_virtual_network_peering.remote.name
  description = "The name of the peering at the remote Vnet."
}

output "remote_id" {
  value       = azurerm_virtual_network_peering.remote.id
  description = "The id of the peering at the remote Vnet."
}

output "remote_resource_group_name" {
  value       = azurerm_virtual_network_peering.remote.resource_group_name
  description = "The name of the resource_group of the peering at the remote Vnet."
}

output "source_name" {
  value       = azurerm_virtual_network_peering.source
  description = "The name of the peering at the local Vnet."
}

output "source_id" {
  value       = azurerm_virtual_network_peering.source.id
  description = "The id of the peering at the local Vnet."
}

output "source_resource_group_name" {
  value       = azurerm_virtual_network_peering.source.resource_group_name
  description = "The name of the resource_group of the peering at the local Vnet."
}
