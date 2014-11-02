FROM golang:1.3.3

COPY ./Godeps/_workspace/src/ /go/src/
RUN ["go-wrapper", "install", "bitbucket.org/liamstask/goose/cmd/goose"]
ENTRYPOINT ["goose"]
