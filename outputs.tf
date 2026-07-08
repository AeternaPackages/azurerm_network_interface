# --- azurerm_network_interface ---
output "network_interfaces" {
  description = "All network_interface resources"
  value       = module.network_interfaces.network_interfaces
}
output "network_interfaces_accelerated_networking_enabled" {
  description = "List of accelerated_networking_enabled values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.accelerated_networking_enabled]
}
output "network_interfaces_applied_dns_servers" {
  description = "List of applied_dns_servers values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.applied_dns_servers]
}
output "network_interfaces_auxiliary_mode" {
  description = "List of auxiliary_mode values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.auxiliary_mode]
}
output "network_interfaces_auxiliary_sku" {
  description = "List of auxiliary_sku values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.auxiliary_sku]
}
output "network_interfaces_dns_servers" {
  description = "List of dns_servers values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.dns_servers]
}
output "network_interfaces_edge_zone" {
  description = "List of edge_zone values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.edge_zone]
}
output "network_interfaces_internal_dns_name_label" {
  description = "List of internal_dns_name_label values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.internal_dns_name_label]
}
output "network_interfaces_internal_domain_name_suffix" {
  description = "List of internal_domain_name_suffix values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.internal_domain_name_suffix]
}
output "network_interfaces_ip_configuration" {
  description = "List of ip_configuration values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.ip_configuration]
}
output "network_interfaces_ip_forwarding_enabled" {
  description = "List of ip_forwarding_enabled values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.ip_forwarding_enabled]
}
output "network_interfaces_location" {
  description = "List of location values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.location]
}
output "network_interfaces_mac_address" {
  description = "List of mac_address values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.mac_address]
}
output "network_interfaces_name" {
  description = "List of name values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.name]
}
output "network_interfaces_private_ip_address" {
  description = "List of private_ip_address values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.private_ip_address]
}
output "network_interfaces_private_ip_addresses" {
  description = "List of private_ip_addresses values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.private_ip_addresses]
}
output "network_interfaces_resource_group_name" {
  description = "List of resource_group_name values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.resource_group_name]
}
output "network_interfaces_tags" {
  description = "List of tags values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.tags]
}
output "network_interfaces_virtual_machine_id" {
  description = "List of virtual_machine_id values across all network_interfaces"
  value       = [for k, v in module.network_interfaces.network_interfaces : v.virtual_machine_id]
}


# --- azurerm_network_interface_application_gateway_backend_address_pool_association ---
output "network_interface_application_gateway_backend_address_pool_associations" {
  description = "All network_interface_application_gateway_backend_address_pool_association resources"
  value       = module.network_interface_application_gateway_backend_address_pool_associations.network_interface_application_gateway_backend_address_pool_associations
}
output "network_interface_application_gateway_backend_address_pool_associations_backend_address_pool_id" {
  description = "List of backend_address_pool_id values across all network_interface_application_gateway_backend_address_pool_associations"
  value       = [for k, v in module.network_interface_application_gateway_backend_address_pool_associations.network_interface_application_gateway_backend_address_pool_associations : v.backend_address_pool_id]
}
output "network_interface_application_gateway_backend_address_pool_associations_ip_configuration_name" {
  description = "List of ip_configuration_name values across all network_interface_application_gateway_backend_address_pool_associations"
  value       = [for k, v in module.network_interface_application_gateway_backend_address_pool_associations.network_interface_application_gateway_backend_address_pool_associations : v.ip_configuration_name]
}
output "network_interface_application_gateway_backend_address_pool_associations_network_interface_id" {
  description = "List of network_interface_id values across all network_interface_application_gateway_backend_address_pool_associations"
  value       = [for k, v in module.network_interface_application_gateway_backend_address_pool_associations.network_interface_application_gateway_backend_address_pool_associations : v.network_interface_id]
}


# --- azurerm_network_interface_application_security_group_association ---
output "network_interface_application_security_group_associations" {
  description = "All network_interface_application_security_group_association resources"
  value       = module.network_interface_application_security_group_associations.network_interface_application_security_group_associations
}
output "network_interface_application_security_group_associations_application_security_group_id" {
  description = "List of application_security_group_id values across all network_interface_application_security_group_associations"
  value       = [for k, v in module.network_interface_application_security_group_associations.network_interface_application_security_group_associations : v.application_security_group_id]
}
output "network_interface_application_security_group_associations_network_interface_id" {
  description = "List of network_interface_id values across all network_interface_application_security_group_associations"
  value       = [for k, v in module.network_interface_application_security_group_associations.network_interface_application_security_group_associations : v.network_interface_id]
}


# --- azurerm_network_interface_backend_address_pool_association ---
output "network_interface_backend_address_pool_associations" {
  description = "All network_interface_backend_address_pool_association resources"
  value       = module.network_interface_backend_address_pool_associations.network_interface_backend_address_pool_associations
}
output "network_interface_backend_address_pool_associations_backend_address_pool_id" {
  description = "List of backend_address_pool_id values across all network_interface_backend_address_pool_associations"
  value       = [for k, v in module.network_interface_backend_address_pool_associations.network_interface_backend_address_pool_associations : v.backend_address_pool_id]
}
output "network_interface_backend_address_pool_associations_ip_configuration_name" {
  description = "List of ip_configuration_name values across all network_interface_backend_address_pool_associations"
  value       = [for k, v in module.network_interface_backend_address_pool_associations.network_interface_backend_address_pool_associations : v.ip_configuration_name]
}
output "network_interface_backend_address_pool_associations_network_interface_id" {
  description = "List of network_interface_id values across all network_interface_backend_address_pool_associations"
  value       = [for k, v in module.network_interface_backend_address_pool_associations.network_interface_backend_address_pool_associations : v.network_interface_id]
}


# --- azurerm_network_interface_nat_rule_association ---
output "network_interface_nat_rule_associations" {
  description = "All network_interface_nat_rule_association resources"
  value       = module.network_interface_nat_rule_associations.network_interface_nat_rule_associations
}
output "network_interface_nat_rule_associations_ip_configuration_name" {
  description = "List of ip_configuration_name values across all network_interface_nat_rule_associations"
  value       = [for k, v in module.network_interface_nat_rule_associations.network_interface_nat_rule_associations : v.ip_configuration_name]
}
output "network_interface_nat_rule_associations_nat_rule_id" {
  description = "List of nat_rule_id values across all network_interface_nat_rule_associations"
  value       = [for k, v in module.network_interface_nat_rule_associations.network_interface_nat_rule_associations : v.nat_rule_id]
}
output "network_interface_nat_rule_associations_network_interface_id" {
  description = "List of network_interface_id values across all network_interface_nat_rule_associations"
  value       = [for k, v in module.network_interface_nat_rule_associations.network_interface_nat_rule_associations : v.network_interface_id]
}



