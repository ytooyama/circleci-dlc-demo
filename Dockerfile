# syntax=docker/dockerfile:1

FROM cimg/go:1.18.3

WORKDIR /home/circleci/project
COPY *.go ./
COPY go.mod ./
RUN go build main.go

EXPOSE 8090

CMD [ "/home/circleci/project/main" ]
