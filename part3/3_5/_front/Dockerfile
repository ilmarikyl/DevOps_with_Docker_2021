# FROM ubuntu:18.04
FROM node:lts-alpine3.14

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

RUN npm install && \
	npm run build && \
	npm install -g serve && \
    adduser -D appuser 

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
