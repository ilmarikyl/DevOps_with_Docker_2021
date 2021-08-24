FROM golang:1.16

EXPOSE 8080
WORKDIR /go/src/app
COPY . .

ENV REQUEST_ORIGIN=http://localhost

RUN go build && \
    useradd -m appuser && \
    apt-get purge -y --auto-remove curl \
    wget && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

USER appuser

CMD ["./server"]



