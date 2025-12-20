# File Ownership

In Unix-like systems, every file and directory is owned by a user and a group. You can see ownership using the `ls -l` command.

```bash
ls -l secret.txt
```

The output looks like this:
`-rw-r--r-- 1 root root 0 Dec 20 12:34 secret.txt`

The first `root` is the owner, and the second `root` is the group.

### Task

Currently, `secret.txt` is owned by `root`. Change its owner to `lab-user`.

```bash
sudo chown lab-user secret.txt
```
