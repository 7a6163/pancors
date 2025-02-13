FROM golang:1-alpine

RUN mkdir /pancors
WORKDIR /pancors

COPY go.mod go.mod
COPY pancors.go pancors.go
COPY cmd/ cmd/

RUN go build -o pancors ./cmd/pancors/main.go

EXPOSE 8080

CMD [ "./pancors" ]