# Phase 2: Eyes Only

Excellent work on the transfer. Now, we have a security breach risk.

The file `/agency/top_secret.txt` currently has permissions set to `777`. In Unix terms, this means **everyone** can read, write, and execute it. This is unacceptable for classified intel.

## Understanding Permissions

Permissions are defined for three scopes: **U**ser (Owner), **G**roup, and **O**thers.
Values are calculated using octal numbers:

- **Read (r)** = 4
- **Write (w)** = 2
- **Execute (x)** = 1

## Your Task

Secure `/agency/top_secret.txt` so that:

- The **Owner** has Read and Write access (4+2=6).
- The **Group** has NO access (0).
- **Others** have NO access (0).

<instruqt-task id="secure_intel"></instruqt-task>
