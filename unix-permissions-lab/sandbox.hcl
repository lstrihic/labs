resource "network" "agency_net" {
  subnet = "10.0.1.0/24"
}

resource "container" "mainframe" {
  image {
    name = "ubuntu:22.04"
  }

  container_name = "agency-mainframe"

  # Basic tools for a linux lab
  command = ["/bin/bash", "-c", "apt-get update && apt-get install -y sudo acl vim nano && tail -f /dev/null"]

  resources {
    memory = 512
  }

  network {
    id = resource.network.agency_net.meta.id
  }
}

# Copy the setup script to the container
resource "copy" "setup_script" {
  source      = "files/setup-agents.sh"
  destination = "/usr/local/bin/setup-agents.sh"
  permissions = "0755"
}
