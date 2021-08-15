build-up:
	UID=$$(id -u) docker-compose -f ./docker-compose.yml up -d --build --no-log-prefix

run-example: build-up
	docker-compose -f ./docker-compose.yml exec docker-skeleton-php-80-cli-alpine /bin/sh -c 'php example-script.php'

console:
	docker-compose -f ./docker-compose.yml exec docker-skeleton-php-80-cli-alpine /bin/sh

start:
	docker-compose -f ./docker-compose.yml start

stop:
	docker-compose -f ./docker-compose.yml stop
