export PROJECT_NAME  ?= fast-sbd
export PYTHON_VERSION ?= 3.9.10

SCRIPTS :=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))scripts

help:
	@echo "setup         setup dev environment"
	@echo "check         check code conventions"


setup:
	$(SCRIPTS)/setup.sh

check:
	$(SCRIPTS)/check.sh
