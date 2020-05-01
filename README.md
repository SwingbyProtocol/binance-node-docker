# binance-node-docker

A portable Docker image and docker-compose spec for Binance Chain full nodes  

[Binance full node docs](https://docs.binance.org/fullnode.html#run-full-node-to-join-binance-chain)  
[Binance full node repo](https://github.com/binance-chain/node-binary)

### Features:

* Spin up full Binance node with single command.
* Works for testnet, prod, or both at once.
* Small image about 100MB, compared to bigger than 6 GB official repository.
* Easy updates

### Startup

Make sure that the latest version numbers are in the variables at the top of the Makefile.

Check and edit the configs in `./homes/mainnet/config` for prod and `./homes/testnet/config` for testnet.

Use `make` and `docker-compose up -d` to start the daemons.

