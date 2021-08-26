FROM golang:alpine3.14 as build-stage

EXPOSE 8080
WORKDIR /go/src/app
COPY . .

ENV REQUEST_ORIGIN=http://localhost

# CGO has to be disabled for alpine
ENV CGO_ENABLED=0

RUN go build && \
    adduser -D appuser

FROM scratch

COPY --from=build-stage /go/src/app/server /server

COPY --from=0 /etc/passwd /etc/passwd

USER appuser

CMD ["./server"]


