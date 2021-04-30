#!/bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

function linkToHome {
    echo "Linking to HOME: ${1}"
    ln -s "${1}" "${HOME}/"
}

linkToHome "${SCRIPT_DIR}/.rc-ext"
