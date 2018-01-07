# Build
```
docker build -t <some tag> ./
```

# Running container to start listening
```
docker run -d --restart always -v /home/ubuntu/mounts/gemini/:/mount/prices/logs/ -h "reader1-btc" -e LOG_MOUNT="/mount/prices/logs" gemini
```
