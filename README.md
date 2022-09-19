# Shell Scripts
## Install
* Copy files to `${HOME}/.rc`
* add below line to `${HOME}/.bashrc`
    ```bash
    [[ -f "${HOME}/.rc/_init.sh" ]] &&
      source "${HOME}/.rc/_init.sh"
    ```

## Functions
### Helpers
#### `h.reloadScripts` (alias `rl`)
Reload scripts to reflect changes in their code.

**Usage:**

    h.reloadScripts


#### `h.editScripts` (alias `es`)
Edit and reload scripts.

**Usage:**

    h.editScripts [SCRIPT_NAME]
