# Build
```
docker build -t <some tag> ./
```

# Running container to start listening
```
docker run -d --restart always \
-v /home/ubuntu/mounts/gemini/:/mount/prices/logs/ \
-h "reader1-btc" \
-e LOG_MOUNT="/mount/prices/logs" \
-e WS_ENDPOINT="wss://api.gemini.com/v1/marketdata" \
-e PRODUCT="btcusd" \
-e LOG_ROTATION_PERIOD=60 \
gemini
```
