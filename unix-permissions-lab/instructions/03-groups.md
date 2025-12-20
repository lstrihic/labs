# Phase 3: Q-Branch Collaboration

Agent 007 (`bond`) and the Quartermaster (`q`) need a shared workspace to develop digital gadgets. We need to create a secure drop box where both of them have full access, but regular agents (`m` or others) cannot see inside.

## Your Task

1.  Create a new group called `q-branch`.
2.  Add user `bond` and user `q` to this new group.
3.  Create a directory `/agency/gadgets`.
4.  Change the group ownership of that directory to `q-branch`.
5.  Set permissions to `770` (Owner and Group have full control, Others have none).

### Command Reference

- `groupadd [groupname]`: Creates a new group.
- `usermod -aG [group] [user]`: Adds a user to a group.
- `chgrp [group] [path]`: Changes group ownership.

<instruqt-task id="setup_group"></instruqt-task>
