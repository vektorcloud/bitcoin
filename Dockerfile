FROM quay.io/vektorcloud/base:3.7

ENV VERSION 0.14.2-r2

RUN apk add \
  --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community \
  bitcoin=$VERSION bitcoin-cli bitcoin-tx bitcoin-bench \
  && cat /dev/null > /etc/bitcoin.conf
