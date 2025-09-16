provider "kubernetes"  {
   config_path    = "~/.kube/config"
  config_context = "kind-observe"
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