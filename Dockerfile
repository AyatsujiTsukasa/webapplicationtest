FROM golang
ADD . /go/src/github.com/AyatsujiTsukasa/webapplicationtest
WORKDIR /go/src/github.com/AyatsujiTsukasa/webapplicationtest

RUN go get github.com/gorilla/websocket
RUN go get github.com/AyatsujiTsukasa/Trace
RUN go get github.com/lib/pq
RUN go install github.com/AyatsujiTsukasa/webapplicationtest

ENTRYPOINT /go/bin/webapplicationtest

EXPOSE 8080
