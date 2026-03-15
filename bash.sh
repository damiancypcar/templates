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

set -euo pipefail


# Check root access
if [ "$(id -u)" -ne 0 ]; then
    echo; echo "This script must be run as root."
    exit 1
fi

# Check user permission to use Docker
if ! docker ps > /dev/null 2>&1; then
    echo "User \"$(whoami)\" does not have permission to use Docker."
    exit 1
fi


# Ask Yes/No default N
read -rp "Are you sure? (y/N) " yn
yn=${yn:-n}
case $yn in
    [Yy]* ) run;;
    [Nn]* ) echo "Exiting."; exit;;
        * ) echo "Invalid response. Exiting."; exit 1;;
esac
