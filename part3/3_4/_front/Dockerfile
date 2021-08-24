FROM ubuntu:18.04

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt install -y nodejs && \
	npm install && \
    npm run build && \
    npm install -g serve && \
    useradd -m appuser && \
	apt-get autoremove -y && \
	apt-get purge -y --auto-remove curl && \
    rm -rf ~/var/lib/apt/lists/*

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]