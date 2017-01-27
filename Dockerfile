FROM golang:1.7.4-wheezy

WORKDIR /go/src/app

COPY ./deamon /go/src/app/
RUN ls .

RUN go get github.com/cenkalti/rpc2
RUN go get github.com/gorilla/websocket
RUN go get github.com/mitchellh/mapstructure

RUN go install -v

CMD ["app"]