variable "nodeCount" {
  type = int
  default = 1
}

variable "nodepoolName" {
    type = string
    default = "Default"
  
}

variable "resourceGroupName" {
    type = string
    default = "AKS-RG"
  
}

variable "vm_size" {
  type = string
  default = "Standard_B2s"
}

variable "location" {
    type = string
    default = "West Europe"
  
}

variable "clusterName" {
    type = string
    default = "akscluster"
  
}