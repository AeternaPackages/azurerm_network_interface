locals {
  network_interfaces = { for k1, v1 in var.network_interfaces : k1 => { accelerated_networking_enabled = v1.accelerated_networking_enabled, auxiliary_mode = v1.auxiliary_mode, auxiliary_sku = v1.auxiliary_sku, dns_servers = v1.dns_servers, edge_zone = v1.edge_zone, internal_dns_name_label = v1.internal_dns_name_label, ip_configuration = v1.ip_configuration, ip_forwarding_enabled = v1.ip_forwarding_enabled, location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, tags = v1.tags } }

  network_interface_application_gateway_backend_address_pool_associations = merge([
    for k1, v1 in var.network_interfaces : {
      for k2, v2 in coalesce(v1.network_interface_application_gateway_backend_address_pool_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_interface_id = module.network_interfaces.network_interfaces_id["${k1}"]
      })
    }
  ]...)

  network_interface_application_security_group_associations = merge([
    for k1, v1 in var.network_interfaces : {
      for k2, v2 in coalesce(v1.network_interface_application_security_group_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_interface_id = module.network_interfaces.network_interfaces_id["${k1}"]
      })
    }
  ]...)

  network_interface_backend_address_pool_associations = merge([
    for k1, v1 in var.network_interfaces : {
      for k2, v2 in coalesce(v1.network_interface_backend_address_pool_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_interface_id = module.network_interfaces.network_interfaces_id["${k1}"]
      })
    }
  ]...)

  network_interface_nat_rule_associations = merge([
    for k1, v1 in var.network_interfaces : {
      for k2, v2 in coalesce(v1.network_interface_nat_rule_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        network_interface_id = module.network_interfaces.network_interfaces_id["${k1}"]
      })
    }
  ]...)
}

module "network_interfaces" {
  source             = "git::https://github.com/AeternaModules/azurerm_network_interface.git?ref=v4.80.0"
  network_interfaces = local.network_interfaces
}

module "network_interface_application_gateway_backend_address_pool_associations" {
  source                                                                  = "git::https://github.com/AeternaModules/azurerm_network_interface_application_gateway_backend_address_pool_association.git?ref=v4.80.0"
  network_interface_application_gateway_backend_address_pool_associations = local.network_interface_application_gateway_backend_address_pool_associations
  depends_on                                                              = [module.network_interfaces]
}

module "network_interface_application_security_group_associations" {
  source                                                    = "git::https://github.com/AeternaModules/azurerm_network_interface_application_security_group_association.git?ref=v4.80.0"
  network_interface_application_security_group_associations = local.network_interface_application_security_group_associations
  depends_on                                                = [module.network_interfaces]
}

module "network_interface_backend_address_pool_associations" {
  source                                              = "git::https://github.com/AeternaModules/azurerm_network_interface_backend_address_pool_association.git?ref=v4.80.0"
  network_interface_backend_address_pool_associations = local.network_interface_backend_address_pool_associations
  depends_on                                          = [module.network_interfaces]
}

module "network_interface_nat_rule_associations" {
  source                                  = "git::https://github.com/AeternaModules/azurerm_network_interface_nat_rule_association.git?ref=v4.80.0"
  network_interface_nat_rule_associations = local.network_interface_nat_rule_associations
  depends_on                              = [module.network_interfaces]
}

