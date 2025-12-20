resource "terminal" "console" {
  target = resource.container.mainframe
  shell  = "/bin/bash"
  user   = "root"
}
