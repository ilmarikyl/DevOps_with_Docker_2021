FROM golang:alpine3.14

EXPOSE 8080
WORKDIR /go/src/app
COPY . .

ENV REQUEST_ORIGIN=http://localhost

RUN go build && \
    adduser -D appuser

USER appuser

CMD ["./server"]

