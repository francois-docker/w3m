# Base docker image
FROM debian:jessie
MAINTAINER François Billant <fbillant@gmail.com>

RUN sed -i.bak 's/jessie main/jessie main contrib non-free/g' /etc/apt/sources.list && \

apt-get update && \
apt-get install -y \
w3m

ENTRYPOINT ["/usr/bin/w3m"]
