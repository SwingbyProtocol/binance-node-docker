all: docker

docker:
	./scripts/docker-build.sh

.PHONY: all docker

