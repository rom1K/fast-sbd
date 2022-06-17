.PHONY: help setup check

export PROJECT_NAME   := fast-sbd
export PYTHON_VERSION := 3.9.13
export CYAN           := \e[1;96m
export GREEN          := \e[1;92m
export RESET          := \e[0m

SCRIPTS :=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))scripts

help:
	@echo "setup         setup dev environment"
	@echo "check         check code conventions"

setup:
	$(SCRIPTS)/setup.sh

check:
	$(SCRIPTS)/check.sh
