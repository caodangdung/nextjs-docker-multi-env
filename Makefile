scale = 1
.PHONY: build-development
build-development: ## Build the development docker image.
	docker-compose -f docker/development/docker-compose.yml build

.PHONY: start-development
start-development: ## Start the development docker container.
	docker-compose -f docker/development/docker-compose.yml up -d --scale nextjs=${scale}

.PHONY: stop-development
stop-development: ## Stop the development docker container.
	docker-compose -f docker/development/docker-compose.yml down

.PHONY: build-staging
build-staging: ## Build the staging docker image.
	docker-compose -f docker/staging/docker-compose.yml build

.PHONY: start-staging
start-staging: ## Start the staging docker container.
	docker-compose -f docker/staging/docker-compose.yml up -d

.PHONY: stop-staging
stop-staging: ## Stop the staging docker container.
	docker-compose -f docker/staging/docker-compose.yml down
  
.PHONY: build-production
build-production: ## Build the production docker image.
	docker-compose -f docker/production/docker-compose.yml build

.PHONY: start-production
start-production: ## Start the production docker container.
	docker-compose -f docker/production/docker-compose.yml up -d

.PHONY: stop-production
stop-production: ## Stop the production docker container.
	docker-compose -f docker/production/docker-compose.yml down

.PHONY: build-local
build-local: ## Build the local docker image.
	docker-compose -f docker/local/docker-compose.yml build

.PHONY: start-local
start-local: ## Start the local docker container.
	docker-compose -f docker/local/docker-compose.yml up -d

.PHONY: stop-local
stop-local: ## Stop the local docker container.
	docker-compose -f docker/local/docker-compose.yml down
