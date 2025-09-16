provider "kubernetes" {
  config_path = var.kubeconfig_path
}

variable "kubeconfig_path" {
  default = "" # will be overridden by env var
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
