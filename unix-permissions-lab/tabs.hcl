resource "terminal" "main_terminal" {
  target            = resource.container.shell
  working_directory = "/home/lab-user"
  shell             = "/bin/bash"
}
