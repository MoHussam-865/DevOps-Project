FROM golang:1.18 AS builder

WORKDIR /my-app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -v -o /my-app/backend ./...

FROM alpine:latest

WORKDIR /my-app

COPY --from=builder /my-app/backend /my-app/backend

EXPOSE 8000

RUN chmod +x backend
RUN adduser -D runner
RUN chown -R runner:runner /my-app
USER runner

CMD ["./backend"]