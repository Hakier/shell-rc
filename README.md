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


### Git
#### `g.listAllBranches` (alias `gli`)
List local and remote branches without remote prefix.

**Usage:**

    g.listAllBranches


#### `g.filterBranches` (alias `gfi`)
Filter all branches with a given pattern.

**Usage:**

    g.filterBranches PATTERN


#### `g.filterBranches` (alias `gfil`)
Same as above but accepts `BRANCHES_LIMIT`.

**Usage:**

    g.filterBranches PATTERN [BRANCHES_LIMIT=3]


#### `g.checkoutBranch` (alias `gch`)
Checkout a branch with a given pattern.

When more than one branch is found it will print count of them and a truncated list.

**Usage:**

    g.checkoutBranch PATTERN [BRANCHES_LIMIT]
