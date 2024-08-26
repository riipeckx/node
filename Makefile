.DEFAULT_GOAL := help

# Vars
REPO := riipeckx
IMAGE_NAME := node
TAG := 22-alpine
FULL_NAME := $(REPO)/$(IMAGE_NAME):$(TAG)

help:
	@grep -E '^[a-zA-Z0-9_]+:.*#.*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*#"} {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

print-fullname: # Print the Docker image fullname
	@echo $(FULL_NAME)

build: # Build the Docker image
	docker build -t $(FULL_NAME) .

dev: # Build then run a fresh Docker image
	docker build -t $(FULL_NAME) .
	docker run --rm -it --workdir=/app -e "NODE_ENV=development" -p 3000:3000 -v $PWD:/app $(FULL_NAME) ash

push: # Push the Docker image
	docker push $(FULL_NAME)