#!/usr/bin/env bash

function activatevenv() {
  # Names of possible virtualenv directories
  VIRTUALENV_DIRS=("venv/" "env/" ".env/" ".venv/" "${PWD##*/}")

  for dir in $VIRTUALENV_DIRS; do
    if [[ -d "${dir}" ]]; then
      if [[ -e "./${dir}/bin/activate" ]]; then
        source ./$dir/bin/activate
        return
      fi
    fi

    if [ "${#VIRTUAL_ENV}" -gt 0 ]; then
        deactivate >> /dev/null 2>&1
    fi
  done

}
activatevenv

function cd() {
    builtin cd $1

    activatevenv
}

function z() {
    echo "CATCH Z"
    __zoxide_z $@

    activatevenv
}

