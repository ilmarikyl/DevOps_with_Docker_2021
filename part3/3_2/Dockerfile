FROM ubuntu:latest

WORKDIR /usr/src/app

COPY ./script.sh ./script.sh

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install apt-transport-https \
    ca-certificates \
	git \
    curl \
    gnupg2 \
    software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable" && \
    apt-get update && \
    apt-get -y install docker-ce

ENTRYPOINT ["./script.sh"]