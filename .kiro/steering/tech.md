# Technology Stack

## Core Technologies

- **Language**: Go 1.15+
- **Web Framework**: Gin (github.com/gin-gonic/gin v1.7.7)
- **Database**: PostgreSQL
- **ORM**: GORM v1.22.4 with PostgreSQL driver
- **Validation**: gopkg.in/validator.v2
- **Containerization**: Docker & Docker Compose

## Key Dependencies

- `gorm.io/gorm` - ORM for database operations
- `gorm.io/driver/postgres` - PostgreSQL driver for GORM
- `github.com/gin-gonic/gin` - HTTP web framework
- `gopkg.in/validator.v2` - Data validation

## Development Commands

### Local Development with Docker

```bash
# Start the application with PostgreSQL
docker-compose up

# Start in detached mode
docker-compose up -d

# Stop services
docker-compose down
```

### Native Go Development

```bash
# Run the application
go run main.go

# Run tests
go test

# Build the application
go build

# Install dependencies
go mod tidy
```

## Environment Configuration

- Database connection configured via environment variables
- See `.env.example` for required environment variables
- Docker Compose automatically sets up the database environment

## Application Ports

- Application runs on port 8080
- PostgreSQL runs on port 5432 (internal to Docker network)
