FROM golang

RUN go get -v github.com/lyft/ratelimit/src/service_cmd

RUN cp /go/bin/service_cmd /usr/local/bin/ratelimit

EXPOSE 8080
EXPOSE 8081
EXPOSE 6070

CMD ["/usr/local/bin/ratelimit"]