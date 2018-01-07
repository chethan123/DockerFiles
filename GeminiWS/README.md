# Build
```
docker build -t gemini ./
```

# Running container to start listening
```
docker run -dit --restart always \
-v /home/ubuntu/mounts/gemini/:/mount/prices/logs/ \
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
