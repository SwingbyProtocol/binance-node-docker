all: docker

binvertest := 0.7.2-hotfix-2
binver := 0.7.2
cliver := 0.6.3

docker:
	docker build --build-arg BVER=$(binver) --build-arg BVERTEST=${binvertest} --build-arg CLIVER=$(cliver) . -t binance/binance-node:latest

start:
	docker-compose up -d

stop:
	docker-compose down

.PHONY: all docker start stop

