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
#### `reloadScripts` (alias `rl`)
Reload scripts to reflect changes in their code.
