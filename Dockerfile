# syntax=docker/dockerfile:1

FROM docker.io/golang:1.18-bullseye

WORKDIR /app
COPY *.go ./
COPY go.mod ./
RUN go build -o /go-service
EXPOSE 8090
CMD [ "/go-service" ]
