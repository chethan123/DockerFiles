FROM ubuntu:latest

ARG WS_ENDPOINT="wss://api.gemini.com/v1/marketdata"
ARG LOG_ROTATION_PERIOD=60
ARG LOG_MOUNT
ARG PRODUCT="btcusd"

RUN apt-get update && apt-get install -y npm && ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g wscat
RUN apt-get install -y apache2 apache2-utils
COPY ./compress.sh /usr/bin/
RUN chmod 777 /usr/bin/compress.sh
CMD wscat --connect ${WS_ENDPOINT}/${PRODUCT} | rotatelogs -p "/usr/bin/compress.sh" ${LOG_MOUNT}/`hostname`/prices-`hostname`-%Y-%m-%d-%H_%M_%S ${LOG_ROTATION_PERIOD}
