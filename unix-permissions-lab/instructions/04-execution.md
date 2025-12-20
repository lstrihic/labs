# Phase 4: Mission Go

The satellite uplink is ready. However, the automated launch script `/agency/launch_missile.sh` is failing to start.

The developers uploaded it with read/write permissions, but forgot the most important bit for a script: the **Execute** bit.

## Your Task

1.  Verify the script exists in `/agency`.
2.  Add the **execute (+x)** permission to the script so it can be run.
3.  Test it by running `./launch_missile.sh`.

<details>
<summary><strong>Stuck? Click for a Hint</strong></summary>

You don't need to use numbers for this one. You can use the symbolic mode `+x` to add execution rights.

`chmod +x FILENAME`

</details>

<instruqt-task id="fix_script"></instruqt-task>
