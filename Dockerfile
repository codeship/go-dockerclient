FROM golang:1.6
MAINTAINER dev@codeship.com

RUN mkdir -p /go/src/github.com/codeship/go-dockerclient
WORKDIR /go/src/github.com/codeship/go-dockerclient
COPY . .

RUN make testdeps
RUN go install ./...
