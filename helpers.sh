#!/usr/bin/env bash

function h.reloadScripts {
  source ${HOME}/.bashrc
}

function h.editScripts {
  scriptName="${1}"


  if [[ "${scriptName}" == ".bashrc" ]]; then
    editor "${HOME}/.bashrc"
  elif [[ -n "${scriptName}" ]]; then
    editor "${SCRIPTS_DIR}/${scriptName}.sh"
  else
    echo ".bashrc"
    ls "${SCRIPTS_DIR}" -1
  fi

  h.reloadScripts
}
