# Project Structure

## Directory Organization

```
├── main.go                 # Application entry point
├── go.mod                  # Go module definition
├── go.sum                  # Go module checksums
├── docker-compose.yml      # Docker services configuration
├── .env.example           # Environment variables template
├── controllers/           # HTTP request handlers
│   └── controller.go      # All controller functions
├── database/              # Database connection and setup
│   └── db.go             # Database initialization
├── models/                # Data models and validation
│   └── alunos.go         # Student model definition
├── routes/                # HTTP routing configuration
│   └── route.go          # Route definitions
├── templates/             # HTML templates
│   ├── index.html        # Student listing page
│   └── 404.html          # Not found page
├── assets/                # Static assets (CSS, JS, images)
│   ├── index.css         # Main page styles
│   └── 404.css           # 404 page styles
└── postgres-data/         # PostgreSQL data directory (Docker volume)
```

## Architecture Patterns

### MVC-like Structure

- **Models** (`models/`): Data structures and validation logic
- **Controllers** (`controllers/`): Business logic and request handling
- **Routes** (`routes/`): URL routing and middleware setup

### Package Organization

- Each major component has its own package
- Database connection is centralized in `database` package
- All controllers are in a single file for this simple application
- Models include both struct definitions and validation functions

## Naming Conventions

### Files and Packages

- Package names are lowercase, single words
- File names use lowercase with underscores if needed
- Go files follow the pattern: `package_purpose.go`

### Functions and Variables

- Public functions use PascalCase (exported)
- Private functions use camelCase (unexported)
- Portuguese naming is used for domain-specific terms (e.g., `Aluno`, `ConectaComBancoDeDados`)

### Database and API

- Database table names follow GORM conventions
- API endpoints use RESTful patterns
- JSON field names use lowercase Portuguese terms

## Code Organization Rules

1. **Single Responsibility**: Each package has a clear, single purpose
2. **Dependency Direction**: Controllers depend on models and database, not vice versa
3. **Configuration**: Environment-based configuration through Docker Compose
4. **Static Assets**: All frontend assets organized under `assets/` and `templates/`
