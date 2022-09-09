#!/usr/bin/env bash

function reloadScripts {
  source ${HOME}/.bashrc
}

function editScripts {
  scriptName="${1}"


  if [[ "${scriptName}" == ".bashrc" ]]; then
    editor "${HOME}/.bashrc"
  elif [[ -n "${scriptName}" ]]; then
    editor "${SCRIPTS_DIR}/${scriptName}.sh"
  else
    echo ".bashrc"
    ls "${SCRIPTS_DIR}" -1
  fi

  reloadScripts
}


alias rl=reloadScripts
alias es=editScripts
