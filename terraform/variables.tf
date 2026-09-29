variable "subscription_id" {
  description = "Azure subscription ID. Required by the azurerm 4.x provider."
  type        = string
}

variable "yourname" {
  description = "Your name, lowercase, no spaces. Makes resource names unique."
  type        = string
}

variable "location" {
  description = "Azure region to deploy into."
  type        = string
  default     = "West US 3"
}

variable "node_count" {
  description = "Number of worker nodes in the system pool."
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "VM size for each node. 2 vCPU / 4 GiB, available and within quota for this subscription."
  type        = string
  default     = "Standard_D2alds_v7"
}

variable "tags" {
  type = map(string)
  default = {
    project     = "aks-helm"
    environment = "dev"
    managed_by  = "terraform"
  }
}
