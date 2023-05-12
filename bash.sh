#!/usr/bin/env bash
# ----------------------------------------------------------
# Author:          damiancypcar
# Modified:        03.03.2023
# Version:         1.0
# Desc:            description
# ----------------------------------------------------------
# set -e           - immediately exit if any command has a non-zero exit status
# set -u           - immediately exit if use any variable NOT previously defined
# set -o pipefail  - if any command in a pipeline fails, that return code will be used as the return code of the whole pipeline
# set -x           - debug mode, all executed commands are printed to the terminal

set -euo pipefail

VARIABLE="<var value>"

# ROOT CHECK
# shellcheck disable=SC2046
if [ $(id -u) -ne 0 ]; then
    echo "You must be ROOT to run this script"
    exit 1
fi

# YES/NO ASK
read -rp "Are you sure? (y/N) " yn
yn=${yn:-n}
case $yn in
    [Yy]* ) run;;
    [Nn]* ) echo "Exiting."; exit;;
        * ) echo "Invalid response. Exiting."; exit 1;;
esac
