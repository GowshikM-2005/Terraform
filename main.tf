variable "kubeconfig_path" {
  description = "Path to kubeconfig file"
  type        = string
}

provider "kubernetes" {
  config_path = var.kubeconfig_path
}

resource "kubernetes_pod" "example" {
 metadata {
    name = "example"
        labels = {
        app = "example"
        }
    }
    
    spec {
        container {
        image = "nginx:latest"
        name  = "nginx"
    
        port {
            container_port = 80
        }
        }
    }
} 
