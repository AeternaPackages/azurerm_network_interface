variable "network_interfaces" {
  description = <<EOT
Map of network_interfaces, attributes below
Required:
    - location
    - name
    - resource_group_name
    - ip_configuration (block)
Optional:
    - accelerated_networking_enabled
    - auxiliary_mode
    - auxiliary_sku
    - dns_servers
    - edge_zone
    - internal_dns_name_label
    - ip_forwarding_enabled
    - tags
Nested network_interface_application_gateway_backend_address_pool_associations (azurerm_network_interface_application_gateway_backend_address_pool_association):
    Required:
        - backend_address_pool_id
        - ip_configuration_name
Nested network_interface_application_security_group_associations (azurerm_network_interface_application_security_group_association):
    Required:
        - application_security_group_id
Nested network_interface_backend_address_pool_associations (azurerm_network_interface_backend_address_pool_association):
    Required:
        - backend_address_pool_id
        - ip_configuration_name
Nested network_interface_nat_rule_associations (azurerm_network_interface_nat_rule_association):
    Required:
        - ip_configuration_name
        - nat_rule_id
EOT

  type = map(object({
    location                       = string
    name                           = string
    resource_group_name            = string
    accelerated_networking_enabled = optional(bool) # Default: false
    auxiliary_mode                 = optional(string)
    auxiliary_sku                  = optional(string)
    dns_servers                    = optional(list(string))
    edge_zone                      = optional(string)
    internal_dns_name_label        = optional(string)
    ip_forwarding_enabled          = optional(bool) # Default: false
    tags                           = optional(map(string))
    ip_configuration = object({
      gateway_load_balancer_frontend_ip_configuration_id = optional(string)
      name                                               = string
      primary                                            = optional(bool)
      private_ip_address                                 = optional(string)
      private_ip_address_allocation                      = string
      private_ip_address_version                         = optional(string) # Default: "IPv4"
      public_ip_address_id                               = optional(string)
      subnet_id                                          = optional(string)
    })
    network_interface_application_gateway_backend_address_pool_associations = optional(map(object({
      backend_address_pool_id = string
      ip_configuration_name   = string
    })))
    network_interface_application_security_group_associations = optional(map(object({
      application_security_group_id = string
    })))
    network_interface_backend_address_pool_associations = optional(map(object({
      backend_address_pool_id = string
      ip_configuration_name   = string
    })))
    network_interface_nat_rule_associations = optional(map(object({
      ip_configuration_name = string
      nat_rule_id           = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.network_interfaces) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.network_interfaces : [for kk in keys(coalesce(v0.network_interface_application_gateway_backend_address_pool_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.network_interfaces : [for kk in keys(coalesce(v0.network_interface_application_security_group_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.network_interfaces : [for kk in keys(coalesce(v0.network_interface_backend_address_pool_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.network_interfaces : [for kk in keys(coalesce(v0.network_interface_nat_rule_associations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
