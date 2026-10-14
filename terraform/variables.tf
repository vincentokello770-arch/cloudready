variable "subscription_id" {
  description = "Azure subscription ID used for this deployment"
  type        = string
  default     = ""
}

variable "location" {
  description = "Azure region for the infrastructure"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "rg-cloudready-dev"
}

variable "vnet_address_space" {
  description = "IPv4 address range for the virtual network"
  type        = string
  default     = "10.10.0.0/16"
}

variable "subnet_address_prefix" {
  description = "IPv4 address range for the application subnet"
  type        = string
  default     = "10.10.1.0/24"
}
