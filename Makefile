SHELL := /bin/bash

# HELP
.PHONY: help docker

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# TASKS
docker: ## build a docker container
	docker run -d --name quire-develop -v${PWD}:/quire -p8000:8000 node:latest tail -f /dev/null
