resource "terminal" "k8s_terminal" {
  target            = resource.container.shell
  working_directory = "/root"
  shell             = "/bin/bash"
}

resource "layout" "two_column" {
  column {
    width = "40"
    instructions {}
  }

  column {
    width = "60"
    tab "terminal" {
      target = resource.terminal.k8s_terminal
      title  = "Kubectl Terminal"
      active = true
    }
  }
}