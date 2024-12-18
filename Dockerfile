FROM golang:1.22.1

WORKDIR /app

COPY . .

RUN go mod tidy

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /app/app .

CMD ["/app/app"] 
