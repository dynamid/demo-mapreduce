FROM golang:1.21-rc-alpine3.18

ADD https://github.com/golang/dep/releases/download/v0.5.4/dep-linux-arm  /usr/bin/dep
RUN chmod +x /usr/bin/dep

WORKDIR $GOPATH/src/github.com/DigWing/mapreduce

COPY Gopkg.toml Gopkg.lock ./
COPY . ./
RUN apk add git && \
    dep ensure --vendor-only && \
    go mod init && \
    go mod tidy && \
    go get ./... && \
    go mod vendor && \
    go build -o simple-mapreduce

EXPOSE 8080

CMD ["./simple-mapreduce"]
