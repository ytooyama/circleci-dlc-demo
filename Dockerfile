# syntax=docker/dockerfile:1

FROM cimg/go:1.18

WORKDIR /app
COPY *.go ./
COPY go.mod ./
RUN go build -o /go-service
EXPOSE 8090
CMD [ "/go-service" ]
