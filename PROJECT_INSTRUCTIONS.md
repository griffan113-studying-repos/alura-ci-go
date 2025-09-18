# Project Instructions for Alura CI Go

## Project Overview
This project is a Go-based web application designed to manage student data. It includes features for interacting with a PostgreSQL database, rendering HTML templates, and handling routes and controllers.

## Setup Instructions

### Prerequisites
- Install [Go](https://golang.org/dl/) (version 1.16 or later).
- Install [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/).

### Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/griffan113-studying-repos/alura-ci-go.git
   cd alura-ci-go
   ```
2. Start the PostgreSQL database using Docker Compose:
   ```bash
   docker-compose up -d
   ```
3. Install Go dependencies:
   ```bash
   go mod tidy
   ```
4. Run the application:
   ```bash
   go run main.go
   ```

## Usage Instructions

### Running the Application
- Start the application with:
  ```bash
  go run main.go
  ```
- Access the application in your browser at `http://localhost:8080`.

### Running Tests
- Run the tests with:
  ```bash
  go test ./...
  ```

## Folder Structure Explanation

- `assets/`: Contains static files like CSS.
- `controllers/`: Handles HTTP requests and responses.
- `database/`: Contains database connection logic.
- `models/`: Defines data models for the application.
- `routes/`: Defines application routes.
- `templates/`: Contains HTML templates for rendering views.
- `postgres-data/`: Stores PostgreSQL data files.

## Development Guidelines

- Follow Go's standard formatting and linting rules. Use `gofmt` to format your code.
- Write unit tests for new features and ensure all tests pass before committing.
- Use meaningful commit messages.
- Document your code where necessary.

## Additional Notes

- The `.kiro/steering` folder contains documentation about the project's product, structure, and technology. Refer to these files for more detailed insights into the project's design and goals.