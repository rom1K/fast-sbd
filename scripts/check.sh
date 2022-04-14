#!/bin/bash
# TIP: http://redsymbol.net/articles/unofficial-bash-strict-mode
set -euo pipefail
IFS=$'\n\t'

CYAN="\e[1;96m"
GREEN="\e[1;92m"
RESET="\e[0m"


echo -e "${GREEN}Checking ${CYAN}black${GREEN}${RESET}"
black --check src

echo -e "${GREEN}Checking ${CYAN}flake8${GREEN}${RESET}"
flake8 src

echo -e "${GREEN}Checking ${CYAN}mypy${GREEN}${RESET}"
mypy src

echo -e "${GREEN}Checking ${CYAN}pydocstyle${GREEN}${RESET}"
pydocstyle src
