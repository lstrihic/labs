resource "network" "lab_net" {
  subnet = "10.0.0.0/24"
}

resource "container" "shell" {
  image {
    name = "ubuntu:22.04"
  }

  network {
    id = resource.network.lab_net.meta.id
  }

  command = ["/bin/bash", "-c", "apt-get update && apt-get install -y sudo && /usr/bin/setup-agents.sh && sleep infinity"]

  volume {
    source      = "files/setup-agents.sh"
    destination = "/usr/bin/setup-agents.sh"
    type        = "bind"
  }
}
