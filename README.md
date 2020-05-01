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

Make sure that your home directories are in `../.bnbchaind` for prod and `../.bnbchaind-testnet` for testnet and then use `make` and `docker-compose up -d`.

