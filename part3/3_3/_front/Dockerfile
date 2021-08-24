FROM ubuntu:18.04

WORKDIR /usr/src/app

EXPOSE 5000
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt install -y nodejs

COPY . .

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:8080

RUN npm install
RUN npm run build
RUN npm install -g serve

RUN useradd -m appuser

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]