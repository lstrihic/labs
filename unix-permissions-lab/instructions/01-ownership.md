# Phase 1: Chain of Command

Welcome to the Agency, Administrator.

We have a situation. A field report, `mission_report.txt`, was uploaded to the mainframe by the root system, but it actually belongs to **Agent 007 (user: bond)**. He cannot edit it because he doesn't own it.

## Your Task

1.  Navigate to the agency directory: `cd /agency`
2.  Check the current owner of the file using `ls -l`.
3.  Change the ownership of `mission_report.txt` to user `bond`.

<details>
<summary><strong>Stuck? Click for a Hint</strong></summary>

Use the `chown` command syntax:
`chown NEW_OWNER FILENAME`

Example: `chown alice file.txt`

</details>

<instruqt-task id="assign_asset"></instruqt-task>
