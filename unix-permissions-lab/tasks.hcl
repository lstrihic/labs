# TASK 1: Ownership (chown)
resource "task" "fix_ownership" {
  description = "Assign the mission report to Agent 007"
  
  config {
    target = resource.container.mainframe
  }

  condition "file_owned" {
    description = "Change ownership of /agency/mission_report.txt to user 'bond'"
    
    setup {
      script = "scripts/task-01/setup.sh"
    }

    check {
      script = "scripts/task-01/check.sh"
      failure_message = "The file is not owned by agent 'bond'."
    }

    solve {
      script = "scripts/task-01/solve.sh"
    }
  }
}

# TASK 2: Permissions (chmod)
resource "task" "secure_file" {
  description = "Lock down the top secret dossier"
  
  config {
    target = resource.container.mainframe
  }

  condition "permissions_set" {
    description = "Set permissions on /agency/top_secret.txt so ONLY the owner can read/write it (600)"
    
    setup {
      script = "scripts/task-02/setup.sh"
    }

    check {
      script = "scripts/task-02/check.sh"
      failure_message = "Permissions are too loose! Ensure only the owner has read/write access."
    }

    solve {
      script = "scripts/task-02/solve.sh"
    }
  }
}

# TASK 3: Groups (groupadd, chgrp, chmod g+s)
resource "task" "group_collab" {
  description = "Create a shared gadget workspace"
  
  config {
    target = resource.container.mainframe
  }

  condition "group_created" {
    description = "Create a group named 'q-branch' and add users 'bond' and 'q' to it"
    
    check {
      script = "scripts/task-03/check_group.sh"
      failure_message = "The group 'q-branch' does not exist or users are missing."
    }

    solve {
      script = "scripts/task-03/solve_group.sh"
    }
  }

  condition "folder_setup" {
    description = "Create directory /agency/gadgets, set group owner to 'q-branch', and ensure group members have full access (770)"
    
    check {
      script = "scripts/task-03/check_folder.sh"
      failure_message = "Folder permissions or group ownership are incorrect."
    }

    solve {
      script = "scripts/task-03/solve_folder.sh"
    }
  }
}

# TASK 4: Execution (chmod +x)
resource "task" "make_executable" {
  description = "Prepare the launch script"
  
  config {
    target = resource.container.mainframe
  }

  condition "is_executable" {
    description = "Make /agency/launch_missile.sh executable"
    
    setup {
      script = "scripts/task-04/setup.sh"
    }

    check {
      script = "scripts/task-04/check.sh"
      failure_message = "The script does not have execution permissions."
    }

    solve {
      script = "scripts/task-04/solve.sh"
    }
  }
}
