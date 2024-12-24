# Dựa trên image Golang chính thức
FROM golang:1.23-alpine

# Set working directory trong container
WORKDIR /app

# Copy source code vào container
COPY . .

# Cài đặt các dependency
RUN go mod download

# Build ứng dụng
RUN go build -o main .

# Chạy ứng dụng khi container khởi động
CMD ["./main"]