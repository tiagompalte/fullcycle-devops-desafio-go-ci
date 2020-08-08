FROM golang:alpine as builder

WORKDIR /go/src/app

COPY . .

RUN go build -o /app src/fullcycle-devops-desafio-go-ci/main.go

FROM scratch

COPY --from=builder /app /app

CMD ["/app"]