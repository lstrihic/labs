resource "lab" "unix_permissions" {
  title       = "Operation: Permission Impossible"
  description = "Master Unix file permissions, ownership, and groups to secure the Secret Agency mainframe."
  tags        = ["linux", "security", "permissions", "bash"]
  
  layout = resource.layout.standard

  content {
    chapter "basics" {
      title = "Phase 1: Chain of Command"
      
      page "ownership" {
        title     = "Assigning Assets"
        reference = resource.page.ownership
      }
    }

    chapter "security" {
      title = "Phase 2: Eyes Only"
      
      page "permissions" {
        title     = "Classified Intel"
        reference = resource.page.permissions
      }
    }

    chapter "collaboration" {
      title = "Phase 3: Q-Branch Collaboration"
      
      page "groups" {
        title     = "Shared Gadgets"
        reference = resource.page.groups
      }
    }

    chapter "execution" {
      title = "Phase 4: Mission Go"
      
      page "execution" {
        title     = "Launch Sequence"
        reference = resource.page.execution
      }
    }
  }
}
