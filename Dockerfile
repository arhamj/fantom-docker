FROM golang:1.16.4-alpine3.13 as builder

RUN apk add --update-cache \
    git \
    gcc \
    musl-dev \
    linux-headers \
    make

RUN git clone https://github.com/Fantom-foundation/go-opera.git /go-opera && \
    chmod -R 755 /go-opera && \
    make -C /go-opera opera

FROM golang:1.16.4-alpine3.13

RUN mkdir -p /data

VOLUME ["/data"]

COPY --from=builder /go-opera/build/opera /usr/local/bin/opera

EXPOSE 5050 18545 18546 18547 19090

ENTRYPOINT ["opera"]
