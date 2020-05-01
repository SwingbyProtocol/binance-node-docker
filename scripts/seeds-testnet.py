import requests, json
d = requests.get('https://testnet-dex.binance.org/api/v1/peers').text # replace dex.binance.org with testnet-dex.binance.org for testnet
l = json.loads(d)
seeds = ",".join([ (seed["id"]+"@"+seed["original_listen_addr"]) for seed in l if seed["accelerated"] == False])
print (seeds)
