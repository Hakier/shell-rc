#!/usr/bin/env bash

function g.listAllBranches {
  git br -a                     |
      sed 's/remotes\/\w*\///'  |
      sort                      |
      uniq
}

function g.filterBranches {
  searchPattern="${1}"


  g.listAllBranches           |
    grep "${searchPattern}"   |
    sed 's/^ *\* //'
}

function g.filterBranchesLimit {
  searchPattern="${1}"
  maxCount="${2}"


  g.filterBranches            |
    head -n "${maxCount:=3}"
}

function g.checkoutBranch {
  searchPattern="${1}"
  maxCount="${2}"


  count=$(g.filterBranches "${searchPattern}" | wc -l)

  if [[ $count -gt 1 ]]; then
    echo "FOUND: ${count}"
    g.filterBranchesLimit "${searchPattern}" "${maxCount}"
  else
    git checkout $(g.filterBranches "${searchPattern}")
  fi
}
