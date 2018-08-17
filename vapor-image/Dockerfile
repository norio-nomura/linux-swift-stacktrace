FROM ubuntu:16.04

WORKDIR /root

RUN apt-get update && \
    apt-get install -y wget && \
    wget -q https://apt.vapor.sh -O apt.vapor.sh && \
    /bin/bash -c "$(cat apt.vapor.sh)" && \
    apt-get update && \
    apt-get install -y swift=4.1.0 vapor

WORKDIR /var/vapor
EXPOSE 8080
CMD vapor build --verbose && vapor run