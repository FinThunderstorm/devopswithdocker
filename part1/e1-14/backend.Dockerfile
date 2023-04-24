FROM golang:1.16

ENV PORT 8080
ENV REQUEST_ORIGIN http://localhost:5000

WORKDIR /usr/src/app

COPY . .

RUN go build

CMD ["./server"]