resource "layout" "main_layout" {
  column {
    width = "40"
    instructions {}
  }

  column {
    width = "60"
    tab "terminal" {
      target = resource.terminal.main_terminal
      title  = "Ubuntu Terminal"
      active = true
    }
  }
}
