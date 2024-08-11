setup:
	@make build
	@make up
	@make composer-update

build:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose stop
down:
	docker-compose down
up:
	docker-compose up -d
composer-update:
	docker exec foodking-server-php-env-1 bash -c "composer update"
data:
	docker exec foodking-server-php-env-1 bash -c "php artisan migrate"
	docker exec foodking-server-php-env-1 bash -c "php artisan db:seed"
