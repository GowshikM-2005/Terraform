provider "kubernetes"  {}

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
