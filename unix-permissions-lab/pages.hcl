resource "page" "ownership" {
  title = "Phase 1: Ownership"
  file  = "instructions/01-ownership.md"
  
  activities = {
    assign_asset = resource.task.fix_ownership
  }
}

resource "page" "permissions" {
  title = "Phase 2: Permissions"
  file  = "instructions/02-permissions.md"
  
  activities = {
    secure_intel = resource.task.secure_file
  }
}

resource "page" "groups" {
  title = "Phase 3: Groups "
  file  = "instructions/03-groups.md"
  
  activities = {
    setup_group = resource.task.group_collab
  }
}

resource "page" "execution" {
  title = "Phase 4: Execution"
  file  = "instructions/04-execution.md"
  
  activities = {
    fix_script = resource.task.make_executable
  }
}
