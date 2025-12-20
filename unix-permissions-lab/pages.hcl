resource "page" "ownership" {
  title = "File Ownership"
  file  = "instructions/01-ownership.md"

  activities = {
    task = resource.task.task_01
  }
}

resource "page" "permissions" {
  title = "File Permissions"
  file  = "instructions/02-permissions.md"

  activities = {
    task = resource.task.task_02
  }
}

resource "page" "groups" {
  title = "Group Management"
  file  = "instructions/03-groups.md"

  activities = {
    task = resource.task.task_03
  }
}

resource "page" "execution" {
  title = "Execution Bits"
  file  = "instructions/04-execution.md"

  activities = {
    task = resource.task.task_04
  }
}
