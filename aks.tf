provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
    name = var.resourceGroupName
    location = var.location
  
}

resource "azurerm_kubernetes_cluster" "default" {
  name                = var.clusterName
  location            = azurerm_resource_group.default.location
  resource_group_name = azurerm_resource_group.default.name
  dns_prefix          = "tf-k8s"

  default_node_pool {
    name            = var.nodepoolName
    node_count      = var.nodeCount
    vm_size         = var.vm_size
    os_disk_size_gb = 30
  }
  
  identity {
    type = "SystemAssigned"
  }

  role_based_access_control {
    enabled = true
  }

}

output "kube_config" {
  value = azurerm_kubernetes_cluster.default.kube_config_raw
  sensitive = true
}

output "resource_group" {
  value = azurerm_kubernetes_cluster.default.resource_group_name  
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.default.name
}