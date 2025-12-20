resource "task" "task_01" {
  description = "Change the owner of 'secret.txt' to 'lab-user'"

  config {
    target = resource.container.shell
  }

  condition "ownership_correct" {
    description = "Check if 'secret.txt' is owned by 'lab-user'"

    check {
      script          = "scripts/task-01/check.sh"
      failure_message = "The file 'secret.txt' is not owned by 'lab-user'."
    }
  }
}

resource "task" "task_02" {
  description = "Set 'secret.txt' permissions to 600 (read/write for owner only)"

  config {
    target = resource.container.shell
  }

  condition "permissions_correct" {
    description = "Check if 'secret.txt' has 600 permissions"

    check {
      script          = "scripts/task-02/check.sh"
      failure_message = "The permissions for 'secret.txt' are not set to 600."
    }
  }
}

resource "task" "task_03" {
  description = "Change the group of 'shared.txt' to 'developers'"

  config {
    target = resource.container.shell
  }

  condition "group_correct" {
    description = "Check if 'shared.txt' belongs to the 'developers' group"

    check {
      script          = "scripts/task-03/check.sh"
      failure_message = "The group for 'shared.txt' is not 'developers'."
    }
  }
}

resource "task" "task_04" {
  description = "Make 'run_me.sh' executable"

  config {
    target = resource.container.shell
  }

  condition "execution_correct" {
    description = "Check if 'run_me.sh' is executable"

    check {
      script          = "scripts/task-04/check.sh"
      failure_message = "The file 'run_me.sh' is not executable."
    }
  }
}
