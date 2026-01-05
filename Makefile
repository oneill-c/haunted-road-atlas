.PHONY: up down restart logs migrate-create migrate-up migrate-down

ENV_FILE := infrastructure/docker/.env
COMPOSE_FILE := infrastructure/docker/docker-compose.yml
GOOSE_DIR := services/api/db/migrations
POSTGRES_HOST ?= localhost
POSTGRES_PORT ?= 5432

ifneq (,$(wildcard $(ENV_FILE)))
  include $(ENV_FILE)
  export
endif

DB_URL := postgres://$(POSTGRES_USER):$(POSTGRES_PASSWORD)@$(POSTGRES_HOST):$(POSTGRES_PORT)/$(POSTGRES_DB)?sslmode=disable

# Create a new database migration
migrate-create:
	goose -dir $(GOOSE_DIR) postgres "$(DB_URL)" create $(name) sql

# Run database migrations
migrate-up:
	goose -dir $(GOOSE_DIR) postgres "$(DB_URL)" up

# Rollback the latest database migration
migrate-down:
	goose -dir $(GOOSE_DIR) postgres "$(DB_URL)" down

# Seed the database
seed:
	docker compose -f $(COMPOSE_FILE) exec -T postgres psql -U $(POSTGRES_USER) -d $(POSTGRES_DB) -f /seed/seed.sql

# Start the docker compose stack
up:
	docker compose -f $(COMPOSE_FILE) up -d

# Stop the docker compose stack
down:
	docker compose -f $(COMPOSE_FILE) down

# Restart the docker compose stack
restart: down up

# View logs from the docker compose stack
logs:
	docker compose -f $(COMPOSE_FILE) logs -f

