FROM golang:latest

COPY ./main.go .

RUN apt-get update

CMD ["go","run","main.go"]