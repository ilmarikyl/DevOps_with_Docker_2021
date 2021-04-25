FROM golang:1.16

EXPOSE 8080
WORKDIR /go/src/app
COPY . .

ENV REQUEST_ORIGIN=http://127.0.0.1:5000

RUN go build

CMD ["./server"]



