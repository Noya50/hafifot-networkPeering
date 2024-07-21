resource "azurerm_virtual_network_peering" "source" {
  name                      = var.peering_name_local
  resource_group_name       = var.resource_group_vnet
  virtual_network_name      = var.vnet_name
  remote_virtual_network_id = var.remote_vnet_id
  allow_gateway_transit     = var.allow_gateway_transit_source
  allow_forwarded_traffic   = var.allow_forwarded_traffic_source
  use_remote_gateways       = var.use_remote_gateways_source
}

resource "azurerm_virtual_network_peering" "remote" {
  name                      = var.peering_name_remote
  resource_group_name       = var.resource_group_remotevnet
  virtual_network_name      = var.remote_vnet_name
  remote_virtual_network_id = var.vnet_id
  allow_gateway_transit     = var.allow_gateway_transit_remote
  allow_forwarded_traffic   = var.allow_forwarded_traffic_remote
  use_remote_gateways       = var.use_remote_gateways_remote
}