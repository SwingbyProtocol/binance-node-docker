#!/bin/bash

set -ex

if [ ! -d "${BNCHOME}/config/" ]; then
    mkdir -p ${BNCHOME}/config/
    #cp /node-binary/fullnode/${BNET}/${BVER}/config/* ${BNCHOME}/config/
    chown -R bnbchaind:bnbchaind ${BNCHOME}/config/
fi

if [ ${BNET} == "testnet" ]; then
    ln -sf /node-binary/fullnode/${BNET}/${BVERTEST}/linux/bnbchaind /usr/local/bin/bnbchaind
    chmod +x /usr/local/bin/bnbchaind
else
    ln -sf /node-binary/fullnode/${BNET}/${BVER}/linux/bnbchaind /usr/local/bin/bnbchaind
    chmod +x /usr/local/bin/bnbchaind
fi

if [ ${BNET} == "testnet" ]; then
    ln -sf /node-binary/cli/${BNET}/${BVERTEST}/linux/tbnbcli /usr/local/bin/tbnbcli
    chmod +x /usr/local/bin/tbnbcli
else
    ln -sf /node-binary/cli/${BNET}/${BVER}/linux/bnbcli /usr/local/bin/bnbcli
    chmod +x /usr/local/bin/bnbcli
fi

# Turn on console logging

sed -i 's/logToConsole = false/logToConsole = true/g' ${BNCHOME}/config/app.toml
