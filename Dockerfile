FROM golang:latest

COPY ./main.go .

RUN apt upgrade

CMD ["go","run","main.go"]