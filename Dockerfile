FROM golang:1.3.3

COPY ./Godeps/_workspace/src/ /go/src/
WORKDIR /go/src/bitbucket.org/liamstask/goose/cmd/goose
RUN ["go-wrapper", "install", "."]
ENTRYPOINT ["goose"]
