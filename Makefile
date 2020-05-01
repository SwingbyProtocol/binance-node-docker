all: docker

version := 0.6.3-hotfix

docker:
	docker build . -t binance/binance-node:$(version)
	docker tag binance/binance-node:$(version) binance/binance-node:latest

start:
	docker-compose up -d

stop:
	docker-compose down

.PHONY: all docker start stop

