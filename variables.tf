variable "resource_group_vnet" {
  description = "(Required) The resource group of the local vnet"
  type        = string
}

variable "resource_group_remotevnet" {
  description = "(Required) The resource group of the remote vnet"
  type        = string
}

variable "peering_name_local" {
  description = "(Required) Name for the first connection: local -> rmote"
  type        = string
}

variable "peering_name_remote" {
  description = "(Required) Name for the second connection: remote -> local"
  type        = string
}

variable "vnet_name" {
  description = "(Required) The name of the local Vnet"
  type        = string
}

variable "vnet_id" {
  description = "(Required) The id of the local Vnet"
  type        = string
}

variable "remote_vnet_id" {
  description = "(Required) The id of the remote Vnet"
  type        = string
}

variable "remote_vnet_name" {
  description = "(Required) The name of the remote Vnet"
  type        = string
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the network peering resource."
  type        = map(string)
  default     = {}
}

variable "allow_gateway_transit_source" {
  description = "(Optional) Determines whether the remote network can use gatewayLinks to connect to the local network. Default to true."
  type = bool
  default = true
}

variable "allow_gateway_transit_remote" {
  description = "(Optional) Determines whether the source network can use gatewayLinks to connect to the remote network. Default to true."
  type = bool
  default = true
}

variable "allow_forwarded_traffic_source" {
  description = "(Optional) Controls if forwarded traffic from VMs in the remote virtual network is allowed. Default to true."
  type = bool
  default = true
}
 
variable "allow_forwarded_traffic_remote" {
  description = "(Optional) Controls if forwarded traffic to the remote virtual network from VMs in the local virtual network is allowed. Default to true."
  type = bool
  default = true
}

variable "use_remote_gateways_source" {
  description = "(Optional) Controls if the local virtual network can use remote gateways. Only one peering can have this flag set to true, and this flag cannot be set if virtual network already has a gateway."
  default = false
  type = bool
}

variable "use_remote_gateways_remote" {
  description = "(Optional) Controls if the remote virtual network can use remote gateways. Only one peering can have this flag set to true, and this flag cannot be set if virtual network already has a gateway."
  default = true
  type = bool
}