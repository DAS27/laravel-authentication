start:
	php artisan serve

setup: install migrate

migrate:
	php artisan migrate
	php artisan db:seed

log:
	tail -f storage/logs/laravel.log

install:
	composer install
	cp -n .env.example .env|| true
	php artisan key:gen --ansi
