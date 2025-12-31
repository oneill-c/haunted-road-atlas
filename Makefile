.PHONY: up down restart logs

# Docker Compose file location
COMPOSE_FILE := infrastructure/docker/docker-compose.yml

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

