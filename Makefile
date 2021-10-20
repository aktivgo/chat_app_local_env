start:
	@cd docker && docker-compose up -d

down:
	@cd docker && docker-compose down

build:
	@make down && cd docker && docker-compose up --build -d

restart: down start

init:
	@git clone https://github.com/aktivgo/chat_app_users_api ./services/users_api && \
	git clone https://github.com/aktivgo/chat_app_frontend ./services/frontend
	@cd services/users_api/composer && composer install

composer:
	@cd services/users_api/composer && composer install

status:
	@cd docker && docker-compose ps

migrate_all_up:
	@migrate -path=services/users_api/database/migrations/ -database "mysql://dev:dev@tcp(localhost:8989)/chat" up