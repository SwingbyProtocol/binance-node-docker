all: docker

docker:
	./scripts/docker-build.sh

start:
	docker-compose up -d

.PHONY: all docker start

