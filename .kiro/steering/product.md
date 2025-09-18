# Product Overview

This is a student management REST API built with Go and Gin framework. The application manages student records (alunos) with basic CRUD operations and includes a simple web interface for viewing student data.

## Core Features

- Student registration and management
- REST API endpoints for student operations
- Web interface for viewing student records
- PostgreSQL database integration
- Docker containerization support

## Domain Model

The application centers around the `Aluno` (Student) entity with the following attributes:

- Nome (Name) - required
- RG (Brazilian ID) - 9 digits, numbers only
- CPF (Brazilian tax ID) - 11 digits, numbers only

The API supports operations like creating, reading, updating, deleting students, and searching by CPF.
