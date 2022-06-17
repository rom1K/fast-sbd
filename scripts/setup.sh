#!/bin/bash
# TIP: http://redsymbol.net/articles/unofficial-bash-strict-mode
set -euo pipefail
IFS=$'\n\t'

echo -e "${GREEN}Creating a virtualenv ${CYAN}${PROJECT_NAME}${GREEN} with Python ${CYAN}${PYTHON_VERSION}${RESET}"
pyenv install ${PYTHON_VERSION} --skip-existing
pyenv virtualenv ${PYTHON_VERSION} ${PROJECT_NAME}
pyenv local ${PROJECT_NAME}

echo -e "${GREEN}Updating pip, setuptools & wheel${RESET}"
pip install --upgrade pip setuptools wheel

echo -e "${GREEN}Installing dev requirements${RESET}"
pip install -r requirements-dev.txt

echo -e "${GREEN}Setting up pre-commit${RESET}"
pre-commit install

echo -e "${GREEN}All set !${RESET}"
