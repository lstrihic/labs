resource "lab" "unix_permissions" {
  title       = "Unix Permissions Mastery"
  description = "Learn the fundamentals of Unix file ownership, permissions, and group management."
  layout      = resource.layout.main_layout

  content {
    chapter "fundamentals" {
      title = "Unix Permissions Fundamentals"

      page "ownership_page" {
        title     = "File Ownership"
        reference = resource.page.ownership
      }

      page "permissions_page" {
        title     = "File Permissions"
        reference = resource.page.permissions
      }

      page "groups_page" {
        title     = "Group Management"
        reference = resource.page.groups
      }

      page "execution_page" {
        title     = "Execution Bits"
        reference = resource.page.execution
      }
    }
  }
}
