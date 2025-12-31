# Build stage
FROM golang:1.22-alpine AS builder

WORKDIR /app

# Copy go mod files (go.sum may not exist yet)
COPY go.mod ./
RUN go mod download

# Copy source code
COPY . .

# Build the application
RUN CGO_ENABLED=0 GOOS=linux go build -o /app/api ./cmd

# Final stage
FROM alpine:latest

RUN apk --no-cache add ca-certificates

WORKDIR /root/

# Copy the binary from builder
COPY --from=builder /app/api .

# Expose port
EXPOSE 8080

# Run the binary
CMD ["./api"]

