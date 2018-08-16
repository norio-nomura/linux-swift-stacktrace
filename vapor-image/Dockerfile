FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y wget && \
    /bin/bash -c "$(wget -qO- https://apt.vapor.sh)" && \
    apt-get update && \
    apt-get install -y swift vapor

WORKDIR /var/vapor
EXPOSE 8080
CMD vapor build --verbose && vapor run