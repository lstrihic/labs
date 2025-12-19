resource "network" "k8s_net" {
  subnet = "10.0.0.0/24"
}

resource "kubernetes_cluster" "k3s" {
  network {
    id = resource.network.k8s_net.meta.id
  }
}

resource "container" "shell" {
  image {
    name = "bitnami/kubectl:latest"
  }

  network {
    id = resource.network.k8s_net.meta.id
  }

  volume {
    source      = resource.kubernetes_cluster.k3s.kube_config.path
    destination = "/root/.kube/config"
    type        = "bind"
  }

  command = ["sleep", "infinity"]
}