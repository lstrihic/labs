# TASK 1: Ownership (chown)
resource "task" "fix_ownership" {
  description = "Assign the mission report to Agent 007"
  
  config {
    target = resource.container.mainframe
  }

  condition "file_owned" {
    description = "Change ownership of /agency/mission_report.txt to user 'bond'"
    
    # Corrected: Reference the local file path, not the path inside container
    setup {
      script = "files/setup-agents.sh"
    }

    check {
      script = "scripts/task-01/check.sh"
      failure_message = "The file is not owned by agent 'bond'."
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
    
    # Corrected: Moved inline script to a file
    setup {
      script = "scripts/task-02/setup.sh"
    }

    check {
      script = "scripts/task-02/check.sh"
      failure_message = "Permissions are too loose! Ensure only the owner has read/write access."
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
    }
  }

  condition "folder_setup" {
    description = "Create directory /agency/gadgets, set group owner to 'q-branch', and ensure group members have full access (770)"
    
    check {
      script = "scripts/task-03/check_folder.sh"
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
    
    # Corrected: Moved inline script to a file
    setup {
      script = "scripts/task-04/setup.sh"
    }

    check {
      script = "scripts/task-04/check.sh"
      failure_message = "The script does not have execution permissions."
    }
  }
}
