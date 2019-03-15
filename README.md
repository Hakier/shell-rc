# Shell RC scripts

## Configuration

Assumption: You have cloned this repo to `$HOME/.rc`

Depending of what shell you are using you will like to edit `$HOME/.profile`, `$HOME/.bashrc` or `$HOME/.zshrc` or similar.

Add `source $HOME/.rc/load` to this file and list what scripts you want to load like this:

    loadRC cd
    loadRC docker
    loadRC git
