ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
PROJECT_NAME := $(filter-out $@,$(MAKECMDGOALS))

.PHONY: deploy
deploy:
	cat $(ROOT_DIR)/tenants/$(filter-out $@,$(MAKECMDGOALS))/* \
		| kubectl apply -f -
%:
	@:
