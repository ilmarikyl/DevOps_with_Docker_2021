FROM golang:1.16

EXPOSE 8080
WORKDIR /go/src/app
COPY . .

ENV REQUEST_ORIGIN=http://localhost

RUN go build

RUN useradd -m appuser

USER appuser

CMD ["./server"]



