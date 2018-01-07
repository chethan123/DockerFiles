# Build
```
docker build -t gemini ./
```

# Running container to start listening
* Create a mount directory on host to collect logs, `/home/ubuntu/mounts/gemini/` below and run,

```
docker run -dit --restart always \
-v /home/ubuntu/mounts/gemini/:/mount/prices/logs/ \
-v $HOME/.aws:/root/.aws \
-h "ethbtc2" \
--name "ethbtc2" \
-e LOG_MOUNT="/mount/prices/logs" \
-e WS_ENDPOINT="wss://api.gemini.com/v1/marketdata" \
-e PRODUCT="ethbtc" \
-e LOG_ROTATION_PERIOD=60 \
gemini
```

# Available values for PRODUCT arg
* ETH-BTC => `ethbtc`
* ETH-USD => `ethusd`
* BTC-USD => `btcusd`

# Not important
```
docker run -dit --restart always \
-v /home/ubuntu/mounts/gemini/:/mount/prices/logs/ \
-v $HOME/.aws/:/root/.aws/ \
-h "eth-btc-2" \
--name "eth-btc-2" \
-e LOG_MOUNT="/mount/prices/logs" \
-e WS_ENDPOINT="wss://api.gemini.com/v1/marketdata" \
-e PRODUCT="ethbtc" \
-e LOG_ROTATION_PERIOD=60 \
gemini2
```
