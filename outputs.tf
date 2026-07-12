# --- azurerm_network_interface ---
output "network_interfaces_accelerated_networking_enabled" {
  description = "Map of accelerated_networking_enabled values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_accelerated_networking_enabled
}

output "network_interfaces_applied_dns_servers" {
  description = "Map of applied_dns_servers values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_applied_dns_servers
}

output "network_interfaces_auxiliary_mode" {
  description = "Map of auxiliary_mode values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_auxiliary_mode
}

output "network_interfaces_auxiliary_sku" {
  description = "Map of auxiliary_sku values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_auxiliary_sku
}

output "network_interfaces_dns_servers" {
  description = "Map of dns_servers values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_dns_servers
}

output "network_interfaces_edge_zone" {
  description = "Map of edge_zone values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_edge_zone
}

output "network_interfaces_internal_dns_name_label" {
  description = "Map of internal_dns_name_label values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_internal_dns_name_label
}

output "network_interfaces_internal_domain_name_suffix" {
  description = "Map of internal_domain_name_suffix values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_internal_domain_name_suffix
}

output "network_interfaces_ip_configuration" {
  description = "Map of ip_configuration values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ip_configuration
}

output "network_interfaces_ip_forwarding_enabled" {
  description = "Map of ip_forwarding_enabled values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_ip_forwarding_enabled
}

output "network_interfaces_location" {
  description = "Map of location values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_location
}

output "network_interfaces_mac_address" {
  description = "Map of mac_address values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_mac_address
}

output "network_interfaces_name" {
  description = "Map of name values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_name
}

output "network_interfaces_private_ip_address" {
  description = "Map of private_ip_address values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_private_ip_address
}

output "network_interfaces_private_ip_addresses" {
  description = "Map of private_ip_addresses values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_private_ip_addresses
}

output "network_interfaces_resource_group_name" {
  description = "Map of resource_group_name values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_resource_group_name
}

output "network_interfaces_tags" {
  description = "Map of tags values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_tags
}

output "network_interfaces_virtual_machine_id" {
  description = "Map of virtual_machine_id values across all network_interfaces, keyed the same as var.network_interfaces"
  value       = module.network_interfaces.network_interfaces_virtual_machine_id
}

# --- azurerm_network_interface_application_gateway_backend_address_pool_association ---
output "network_interface_application_gateway_backend_address_pool_associations_backend_address_pool_id" {
  description = "Map of backend_address_pool_id values across all network_interface_application_gateway_backend_address_pool_associations, keyed the same as var.network_interface_application_gateway_backend_address_pool_associations"
  value       = module.network_interface_application_gateway_backend_address_pool_associations.network_interface_application_gateway_backend_address_pool_associations_backend_address_pool_id
}

output "network_interface_application_gateway_backend_address_pool_associations_ip_configuration_name" {
  description = "Map of ip_configuration_name values across all network_interface_application_gateway_backend_address_pool_associations, keyed the same as var.network_interface_application_gateway_backend_address_pool_associations"
  value       = module.network_interface_application_gateway_backend_address_pool_associations.network_interface_application_gateway_backend_address_pool_associations_ip_configuration_name
}

output "network_interface_application_gateway_backend_address_pool_associations_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_application_gateway_backend_address_pool_associations, keyed the same as var.network_interface_application_gateway_backend_address_pool_associations"
  value       = module.network_interface_application_gateway_backend_address_pool_associations.network_interface_application_gateway_backend_address_pool_associations_network_interface_id
}

# --- azurerm_network_interface_application_security_group_association ---
output "network_interface_application_security_group_associations_application_security_group_id" {
  description = "Map of application_security_group_id values across all network_interface_application_security_group_associations, keyed the same as var.network_interface_application_security_group_associations"
  value       = module.network_interface_application_security_group_associations.network_interface_application_security_group_associations_application_security_group_id
}

output "network_interface_application_security_group_associations_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_application_security_group_associations, keyed the same as var.network_interface_application_security_group_associations"
  value       = module.network_interface_application_security_group_associations.network_interface_application_security_group_associations_network_interface_id
}

# --- azurerm_network_interface_backend_address_pool_association ---
output "network_interface_backend_address_pool_associations_backend_address_pool_id" {
  description = "Map of backend_address_pool_id values across all network_interface_backend_address_pool_associations, keyed the same as var.network_interface_backend_address_pool_associations"
  value       = module.network_interface_backend_address_pool_associations.network_interface_backend_address_pool_associations_backend_address_pool_id
}

output "network_interface_backend_address_pool_associations_ip_configuration_name" {
  description = "Map of ip_configuration_name values across all network_interface_backend_address_pool_associations, keyed the same as var.network_interface_backend_address_pool_associations"
  value       = module.network_interface_backend_address_pool_associations.network_interface_backend_address_pool_associations_ip_configuration_name
}

output "network_interface_backend_address_pool_associations_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_backend_address_pool_associations, keyed the same as var.network_interface_backend_address_pool_associations"
  value       = module.network_interface_backend_address_pool_associations.network_interface_backend_address_pool_associations_network_interface_id
}

# --- azurerm_network_interface_nat_rule_association ---
output "network_interface_nat_rule_associations_ip_configuration_name" {
  description = "Map of ip_configuration_name values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = module.network_interface_nat_rule_associations.network_interface_nat_rule_associations_ip_configuration_name
}

output "network_interface_nat_rule_associations_nat_rule_id" {
  description = "Map of nat_rule_id values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = module.network_interface_nat_rule_associations.network_interface_nat_rule_associations_nat_rule_id
}

output "network_interface_nat_rule_associations_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_nat_rule_associations, keyed the same as var.network_interface_nat_rule_associations"
  value       = module.network_interface_nat_rule_associations.network_interface_nat_rule_associations_network_interface_id
}


