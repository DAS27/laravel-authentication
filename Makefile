start:
	php artisan serve

setup: install migrate

migrate:
	php artisan migrate

log:
	tail -f storage/logs/laravel.log

install:
	composer install
	cp -n .env.example .env|| true
	php artisan key:gen --ansi
