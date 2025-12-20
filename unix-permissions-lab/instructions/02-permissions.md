# File Permissions

Unix permissions are divided into three categories: **Owner**, **Group**, and **Others**.
Each category can have **Read (r)**, **Write (w)**, and **Execute (x)** permissions.

You can set permissions using `chmod`. Numerical notation is common:

- 4: Read
- 2: Write
- 1: Execute

Example: `600` means:

- Owner: 4 (Read) + 2 (Write) = 6
- Group: 0
- Others: 0

### Task

Set the permissions of `secret.txt` so that only the owner can read and write to it (600).

```bash
chmod 600 secret.txt
```
