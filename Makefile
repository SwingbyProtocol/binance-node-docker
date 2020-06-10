all: docker

binver := 0.7.0
cliver := 0.6.3

docker:
	docker build --build-arg BVER=$(binver) --build-arg CLIVER=$(cliver) . -t binance/binance-node:$(binver)
	docker tag binance/binance-node:$(binver) binance/binance-node:latest

start:
	docker-compose up -d

stop:
	docker-compose down

.PHONY: all docker start stop

