resource "layout" "standard" {
  column {
    width = "40"
    
    instructions {
      title = "Mission Briefing"
    }
  }

  column {
    width = "60"
    
    tab "terminal" {
      title    = "Mainframe Terminal"
      target   = resource.terminal.console
    }
  }
}
