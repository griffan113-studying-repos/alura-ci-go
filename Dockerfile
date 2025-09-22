# - - - Builder - - -

FROM golang:1.22 AS builder

WORKDIR /app

# Ensure a portable, static-ish binary
ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main .

# - - - Runner - - -

FROM alpine:latest AS runner

WORKDIR /app

# Install runtime dependencies you actually need
RUN apk add --no-cache ca-certificates tzdata

COPY --from=builder /app/main /app/main

COPY --from=builder /app/templates /app/templates

EXPOSE 8080

ENTRYPOINT [ "/app/main" ]