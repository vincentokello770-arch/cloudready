output "resource_group_name" {
  description = "Name of the Azure resource group"
  value       = azurerm_resource_group.main.name
}

output "virtual_network_id" {
  description = "Resource ID of the Azure virtual network"
  value       = azurerm_virtual_network.main.id
}

output "subnet_id" {
  description = "Resource ID of the application subnet"
  value       = azurerm_subnet.app.id
}

output "virtual_network_name" {
  description = "Name of the Azure virtual network"
  value       = azurerm_virtual_network.main.name
}

output "virtual_network_address_space" {
  description = "IPv4 address space of the Azure virtual network"
  value       = azurerm_virtual_network.main.address_space
}
output "subnet_address_prefix" {
  description = "IPv4 address range of the application subnet"
  value       = azurerm_subnet.app.address_prefixes
}
